const productPhoto = document.querySelectorAll(".product-photo");
productPhoto.forEach((element) => {
    element.addEventListener("click", (e) => {
        getProductDetail(element.dataset.productId);
    });
});

async function getProductDetail(productId) {
    const url = "/api/product/show";
    const data = { productId: productId };
    const token = document
        .querySelector("meta[name=csrf-token]")
        .getAttribute("content");
    const response = await fetch(url, {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
            Accept: "application/json",
            "X-CSRF-TOKEN": token,
        },
        body: JSON.stringify(data),
    });

    const result = await response.json();
    const divdetail = document.querySelector(".homescreen__detail");
    divdetail.style.display = "flex";
    const divdetailproduct = document.querySelector("#detail-product");
    divdetailproduct.innerHTML = `
    
    <img src= "/images/${
        result.product_photo
    }" class="card-img-top product-photo" alt="..." data-product-id="${
        result.id
    }">           
    <div class="product__info">
    <p class="info__name">${result.product_name}</p>
    ${printCategory(result.categories)}
    <p class="info__price">${result.product_price} VND</p>
    <p class="info__desctiption">${result.product_description}</p>
    `;
}
const detail = document.querySelector(".detail-hidden");
if (detail) {
    detail.onclick = function myFunction() {
        document.querySelector(".homescreen__detail").style.display = "none";
    };
}

let valueRate = 0;
const rateList = document.querySelectorAll("#rate");
rateList.forEach((element) => {
    element.addEventListener("change", (e) => {
        valueRate = e.target.value;
    });
});

const btnComment = document.querySelector("#btn-comment");
if (btnComment) {
    btnComment.addEventListener("click", function () {
        if (localStorage.getItem("user")) {
            addComment(this.dataset.productId, this.dataset.url, valueRate);
        } else {
            alert("You need login to comment");
        }
    });
}

async function addComment(productId, url, rating) {
    const commentContent = document.querySelector("#comment_content");
    if (!commentContent.value || rating == 0) {
        alert("Maybe you are missing a comment or rating, please check again!");
        return;
    }
    const data = {
        comment_content: commentContent.value,
        product_id: productId,
        rating: rating,
        userId: localStorage.getItem("user"),
    };
    const token = document
        .querySelector("meta[name=csrf-token]")
        .getAttribute("content");
    const response = await fetch(url, {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
            Accept: "application/json",
            "X-CSRF-TOKEN": token,
        },
        body: JSON.stringify(data),
    });

    // Xử lý kết quả trả về
    const result = await response.json();
    const divComments = document.querySelector("#comments");
    divComments.innerHTML = "";
    result.forEach(async (element) => {
        const urlaccount = "/api/getuser";
        data1 = { idUser: element.user_id };
        const response1 = await fetch(urlaccount, {
            method: "POST",
            headers: {
                "Content-Type": "application/json; charset=utf-8",
                Accept: "application/json; charset=utf-8",
            },
            body: JSON.stringify(data1),
        });
        const result1 = await response1.json();
        $star = `<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="gold" class="bi bi-star-fill" viewBox="0 0 16 16">
        <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
        </svg>`;
        $stars = $star.repeat(element.rating);
        divComments.innerHTML += `
        <li class="list-group-item">
            <div class="username">${result1.username}</div>  
            <div class="star"> ${$stars}</div>
            <div class="comment_content">${element.comment_content}</div>
        </li>
        `;
    });
    commentContent.value = null;
    valueRate = 0;
    const ratecheck = document.querySelector(
        "input[name='rate']:checked:enabled"
    );

    ratecheck.checked = "";
}

let btnLike = document.querySelectorAll(".btn-like");
if (btnLike) {
    btnLike.forEach((element) => {
        element.addEventListener("click", function () {
            if (localStorage.getItem("user")) {
                likeProduct(
                    element.dataset.productId,
                    element.dataset.url,
                    element
                );
            } else {
                alert("You need login to like");
            }
        });
    });
}

async function likeProduct(productId, url, button) {
    const token = document
        .querySelector("meta[name=csrf-token]")
        .getAttribute("content");
    const data = { productId: productId, idUser: localStorage.getItem("user") };
    const response = await fetch(url, {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
            Accept: "application/json",
            "X-CSRF-TOKEN": token,
        },
        body: JSON.stringify(data),
    });

    const result = await response.json();
    button.textContent = `Like ${result.likes}`;
}

const btnLoadmore = document.querySelector(".loadmore");

let urlpage = "/api/pagination?page=2";
const container = document.querySelector(".homescreen__product");

if (btnLoadmore) {
    btnLoadmore.addEventListener("click", async function () {
        const response = await fetch(urlpage);
        // Xu ly ket qua va hien thi giao dien
        const result = await response.json();
        result.data.forEach((product) => {
            container.innerHTML += `
            <div class="product">
                <img src= "/images/${
                    product.product_photo
                }" class="card-img-top product-photo" alt="..." data-product-id="${
                product.id
            }">           
                <div class="product__info">
                <p class="info__name">${product.product_name}</p>
                ${printCategory(product.categories)}
                <p class="info__price">${product.product_price} VND</p>
                <div class="button_action">
                    <a href="${route(
                        "products.detail",
                        product.id
                    )}" class="info__button">
                        View
                    </a>
                    <button class="btn btn-danger btn-like" data-url="${route(
                        "products.like"
                    )}" data-product-id="${product.id}">Like ${
                product.likes
            }</button>                     
                </div>
            </div>
          `;
        });
        urlpage = result.next_page_url;
        if (!urlpage) {
            this.remove();
        }
        btnLike = document.querySelectorAll(".btn-like");
        if (btnLike) {
            btnLike.forEach((element) => {
                element.addEventListener("click", function () {
                    likeProduct(
                        element.dataset.productId,
                        element.dataset.url,
                        element
                    );
                });
            });
        }
        const productPhoto = document.querySelectorAll(".product-photo");
        productPhoto.forEach((element) => {
            element.addEventListener("click", (e) => {
                getProductDetail(element.dataset.productId);
            });
        });
    });
}
function printCategory(categories) {
    let html = "";
    categories.forEach((el) => {
        html += `<span class="badge bg-warning text-dark">${el.category_name}</span>`;
    });
    return html;
}

const resultCheck = document.querySelectorAll(".check-cate");
resultCheck.forEach((element) => {
    element.addEventListener("change", () => {
        checkCategory(element.dataset.url);
    });
});
async function checkCategory(url) {
    let urlhref = window.location.pathname;
    let id = urlhref.substring(urlhref.lastIndexOf("/") + 1);
    container.innerHTML = "";
    const categoryall = document.querySelectorAll(
        "input[name='check-cate']:checked:enabled"
    );
    const categoryId = [...categoryall].map((e) => e.value);
    if (categoryId.length == 0) {
        if (id == 1) {
            categoryId.push("1", "2", "3", "4", "5", "6");
        } else {
            categoryId.push("7", "8", "9", "10", "11", "12");
        }
    }
    // Bước 1: url, data, fetch
    const data = { categoryId: categoryId };
    const response = await fetch(url, {
        method: "POST",
        headers: {
            "Content-Type": "application/json; charset=utf-8",
            Accept: "application/json; charset=utf-8",
        },
        body: JSON.stringify(data),
    });

    const result = await response.json();
    result.forEach((data) => {
        data.forEach((product) => {
            container.innerHTML += `
            <div class="product">
                <img src= "/images/${
                    product.product_photo
                }" class="card-img-top product-photo" alt="..." data-product-id="${
                product.id
            }">
                <div class="product__info">
                <p class="info__name">${product.product_name}</p>
                ${printCategory(product.categories)}
                <p class="info__price">${product.product_price} VND</p>
                <div class="button_action">
                    <a href="${route(
                        "products.detail",
                        product.id
                    )}" class="info__button">
                        View
                    </a>
                    <button class="btn btn-danger btn-like" data-url="${route(
                        "products.like"
                    )}" data-product-id="${product.id}">Like ${
                product.likes
            }</button>
                </div>
            </div>
          `;
        });
    });

    btnLike = document.querySelectorAll(".btn-like");
    if (btnLike) {
        btnLike.forEach((element) => {
            element.addEventListener("click", function () {
                likeProduct(
                    element.dataset.productId,
                    element.dataset.url,
                    element
                );
            });
        });
    }
}

async function keypress(keySearch) {
    const searchmenu = document.querySelector(".search-menu");
    window.onclick = function () {
        searchmenu.style.display = "none";
    };
    searchmenu.innerHTML = "";
    if (keySearch != "") {
        searchmenu.style.display = "block";
    } else {
        searchmenu.style.display = "none";
    }
    // Bước 1: url, data, fetch
    const url = "/api/getproductsearch";
    const data = { keySearch: keySearch };
    const response = await fetch(url, {
        method: "POST",
        headers: {
            "Content-Type": "application/json; charset=utf-8",
            Accept: "application/json; charset=utf-8",
        },
        body: JSON.stringify(data),
    });

    // Bước 2: đọc dữ liệu trả về
    const result = await response.json();
    if (result.length == 0) {
        searchmenu.innerHTML = `
            <h2> Can't search result </h2>
        `;
    }
    result.forEach((element) => {
        proname = new RegExp("(" + keySearch + ")", "gi");
        productName = element.product_name.replace(
            proname,
            "<b>" + "$1" + "</b>"
        );
        searchmenu.innerHTML += `
            <div class="row">
            <div class="col-md-3">
            <a> <img src="/images/${
                element.product_photo
            }" alt="" class="img-fluid"> </a>
            </div>
            <div class="col-md-9">
            <a href="${route(
                "products.detail",
                element.id
            )}"><span>${productName}</span></a>
            <p>${element.product_description.substring(1, 100)} ...</p>
            </div>
            </div>
        `;
    });
}

const acc = document.querySelector(".account");
if (localStorage.getItem("user")) {
    account();
}
async function account() {
    const urlaccount = "/api/getuser";
    data = { idUser: localStorage.getItem("user") };
    const response = await fetch(urlaccount, {
        method: "POST",
        headers: {
            "Content-Type": "application/json; charset=utf-8",
            Accept: "application/json; charset=utf-8",
        },
        body: JSON.stringify(data),
    });
    const result = await response.json();
    acc.innerHTML = `
        <span> ${result.username} </span>
        <a class="log" onclick="logout()" href="/">Logout</a>
    `;
}
function logout() {
    localStorage.removeItem("user");
}

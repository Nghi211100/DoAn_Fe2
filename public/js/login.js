function show() {
    var p = document.getElementById("pwd");
    p.setAttribute("type", "text");
}

function hide() {
    var p = document.getElementById("pwd");
    p.setAttribute("type", "password");
}
function show1() {
    var p = document.getElementById("pwdrt");
    p.setAttribute("type", "text");
}

function hide1() {
    var p = document.getElementById("pwdrt");
    p.setAttribute("type", "password");
}

var pwShown = 0;
var pwShown1 = 0;

const btneye = document.querySelector("#eye");
const btneyetwo = document.querySelector("#eye_two");
if (btneyetwo) {
    btneyetwo.addEventListener(
        "click",
        function () {
            if (pwShown1 == 0) {
                pwShown1 = 1;
                show1();
            } else {
                pwShown1 = 0;
                hide1();
            }
        },
        false
    );
}
if (btneye) {
    btneye.addEventListener(
        "click",
        function () {
            if (pwShown == 0) {
                pwShown = 1;
                show();
            } else {
                pwShown = 0;
                hide();
            }
        },
        false
    );
}

const txtusername = document.querySelector("#txt-input");
const txtpassword = document.querySelector("#pwd");
const login = document.querySelector(".log-in");
if (login) {
    login.addEventListener("click", async function () {
        const url = "/api/login";
        const data = {
            username: txtusername.value,
            password: txtpassword.value,
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
        const result = await response.json();
        result.forEach((element) => {
            localStorage.setItem("user", element.id);
        });
        if (result.length != 0) {
            window.location.href = "/";
        }
    });
}

const txtpasswordrt = document.querySelector("#pwdrt");
const register = document.querySelector(".sign-up");
if (register) {
    register.addEventListener("click", async function () {
        const url = "/api/register";
        if (txtpasswordrt.value !== txtpassword.value) {
            alert("Please check password again!");
            return;
        }
        const data = {
            username: txtusername.value,
            password: txtpassword.value,
        };
        const response = await fetch(url, {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
                Accept: "application/json",
            },
            body: JSON.stringify(data),
        });

        const result = await response.json();
        if (result.length != 0) {
            window.location.href = "/login";
        }
    });
}

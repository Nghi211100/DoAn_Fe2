<div class="homescreen">
  <h2 class="homescreen__title">ALL PRODUCTS</h2>
  <div class="homescreen__product">
       @foreach($products as $product)
    <div class="product">
      <img class="card-img-top product-photo" src="{{ asset('images/' . $product->product_photo) }}" alt="..." data-product-id="{{ $product->id }}"/>
      <div class="product__info">
        <p class="info__name">{{ $product->product_name }}</p>@foreach($product->categories as $category)<span class="badge bg-warning text-dark">{{ $category->category_name }}</span>@endforeach
        <p class="info__price">{{ $product->product_price }} VND</p>
        <div class="button_action"><a class="info__button" href="{{ route('products.detail', $product->id) }}">View</a>
          <button class="btn btn-danger btn-like" data-url="{{ route('products.like') }}" data-product-id="{{ $product->id }}">Like {{$product->likes}}</button>
        </div>
      </div>
    </div>@endforeach
  </div>
    <div class="homescreen__detail">
      <div class="detail-hidden">
      </div>
      <div class="detail-content">
          <div id="detail-product">
          </div>
      </div>
      </div>
  <button class="btn btn-primary loadmore" data-categories="{{$product->categories}}">Load more</button>
</div>
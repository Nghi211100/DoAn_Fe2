
<x-layout>
  <div class="container">
    <div class="detailscreen">
      <div class="row">
        <div class="col-md-4"><img class="card-img-top product-photo" src="{{ asset('images/' . $product->product_photo) }}" alt="..." data-product-id="{{ $product->id }}"/></div>
        <div class="col-md-8">
          <h1>{{ $product->product_name }}</h1>
          <p>{{ $product->product_price }} VND</p>
          <p>{{ $product->product_description }}</p>
          <div class="list_comment">
            <ul class="list-group" id="comments">
              @foreach($product->comments as $comment )
              @php
              $stars = str_repeat('
              <svg class="bi bi-star-fill" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="gold" viewbox="0 0 16 16">
                <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"></path>
              </svg>', $comment->rating);
              @endphp
              <li class="list-group-item">
                <div class="username">{{$comment->user->username}} </div>  
                <div class="star"> {!! $stars !!}</div>
                <div class="comment_content">{{ $comment->comment_content }} </div>  
              </li>
              @endforeach
            </ul>
          </div>
        </div>
        <div class="col-md-12 comment">
          <div class="mb-3">
            <label class="form-label" for="comment_content">Comment</label>
            <textarea id="comment_content" name="comment_content" rows="4" cols="50"></textarea>
          </div>
          <div class="mb-3">
            <label class="form-label" for="rating">Rating</label>
            <section id="rate" class="rating">
              <input type="radio" id="star_5" name="rate" value="5" />
              <label for="star_5" title="Five">&#9733;</label>
              <input type="radio" id="star_4" name="rate" value="4" />
              <label for="star_4" title="Four">&#9733;</label>
              <input type="radio" id="star_3" name="rate" value="3" />
              <label for="star_3" title="Three">&#9733;</label>
              <input type="radio" id="star_2" name="rate" value="2" />
              <label for="star_2" title="Two">&#9733;</label>
              <input type="radio" id="star_1" name="rate" value="1" />
              <label for="star_1" title="One">&#9733;</label>
            </section>
          </div>
          <button class="btn btn-primary" id="btn-comment" type="button" data-product-id="{{ $product->id }}" data-url="{{ route('comments.store') }}">Send</button>
        </div>
      </div>
    </div>
  </div>
</x-layout>
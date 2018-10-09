<section class="container-fluid blog1 blog">
  <div class="row">
    <div class="col header s12 m4 offset-m4">
      <hr class="header-up-hr">
      <h5 class="center-align h">{{ $category1->name }}</h5>
      <hr class="header-down-hr">
    </div>
  </div>
  <div class="row">
    @foreach($post1 as $post)
    <div class="col l4 m6 s12 hvr hvr-grow-shadow">
        <div class="card wow fadeInLeft">
          <div class="card-title center-align">{{ $post->sublist->name }}</div>
          <div class="card-image">
            <img src="{{ asset('/storage/images/' . $post->image) }}" class="responsive-img">
          </div>
          <div class="card-content">
            {{ str_limit($post->description, 150) }}
          </div>
          <div class="card-action center-align"><a href="" class="btn mybtn">ဆက္ဖတ္ရန္</a></div>
        </div>
      </div>
    @endforeach
  </div>
  <p class="center-align"><a href="" class="btn all-btn ">အားလံုး</a></p>
</section>

<section class="adv1">
  <div class="row">
    <div class="col s12">
      <div class="card">
        <div class="card-image">
          <a href="{{ $adv_ary[0]['link']}}"><img src="{{ asset('/storage/images/' . $adv_ary[0]['image']) }}" alt=""></a>
        </div>
      </div>
    </div>
  </div>
</section>

<section class="container-fluid blog blog2">
  <div class="row">
    <div class="col header s12 m4 offset-m4">
      <hr class="header-up-hr">
      <h5 class="center-align h">{{ $category2->name }}</h5>
      <hr class="header-down-hr">
    </div>
  </div>
  <div class="row">
    @foreach($post2 as $post)
    <div class="col l6 m12 s12 hvr hvr-shutter-in-horizontal">
      <div class="card wow fadeInUp">
        <div class="row valign-wrapper padding">
          <div class="col m3">
            <div class="card-image">
              <img src="{{ asset('/storage/images/' . $post->image) }}" class="farming-img responsive-img">
              <!-- <span class="card-title">Card Title</span> -->
            </div>
          </div>
          <div class="col m9">
            <div class="card-content">
              <h6 class="center-align not-cardheader">{{ $post->sublist->name }}</h6>
              <hr class="card-hr">
              <p>{{ str_limit($post->description, 100) }}</p>
            </div>
          </div>
        </div>
        <div class="card-action center-align"><a href="" class="btn mybtn">ဆက္ဖတ္ရန္</a></div>
      </div>
    </div>
    @endforeach
  </div>
  <p class="center-align"><a href="" class="btn all-btn ">အားလံုး</a></p>
</section>

<section class="adv2">
  <div class="row">
    <div class="col s12">
      <div class="card">
        <div class="card-image">
          <a href="{{ $adv_ary[1]['link']}}"><img src="{{ asset('/storage/images/' . $adv_ary[1]['image']) }}" alt=""></a>
        </div>
      </div>
    </div>
  </div>
</section>

<section class="container-fluid blog3 blog">
  <div class="row">
    <div class="col header s12 m4 offset-m4">
      <hr class="header-up-hr">
      <h5 class="center-align h">{{ $category3->name }}</h5>
      <hr class="header-down-hr">
    </div>
  </div>
  <div class="row">
    @foreach($post3 as $post)
    <div class="col l4 m6 s12 hvr hvr-grow-shadow">
      <div class="card wow fadeInLeft">
        <div class="card-title center-align">{{ $post->sublist->name }}</div>
        <div class="card-image">
          <img src="{{ asset('/storage/images/' . $post->image) }}" class="sesponsive-img">
        </div>
        <div class="card-content">
          <p>
            {{ str_limit($post->description, 150) }}
          </p>
        </div>
        <div class="card-action">
          <p class="center-align"><a href="" class="btn mybtn">ဆက္ဖတ္ရန္</a></p>
        </div>
      </div>
    </div>
    @endforeach
  </div>
  <p class="center-align"><a href="" class="btn all-btn">အားလံုး</a></p>
</section>

<section class="adv3">
  <div class="row">
    <div class="col s12">
      <div class="card">
        <div class="card-image">
          <a href="{{ $adv_ary[2]['link']}}"><img src="{{ asset('/storage/images/' . $adv_ary[2]['image']) }}" alt=""></a>
        </div>
      </div>
    </div>
  </div>
</section>

<section class="container-fluid blog4 blog">
  <div class="row">
    <div class="col header s12 m4 offset-m4">
      <hr class="header-up-hr">
      <h5 class="center-align h">{{ $category4->name }}</h5>
      <hr class="header-down-hr">
    </div>
  </div>
  <div class="row padding">
    @foreach($post4 as $post)
    <div class="col m12 news-card hvr hvr-float-shadow">
      <div class="card wow fadeInLeft">
        <div class="row valign-wrapper padding">
          <div class="col m3">
            <div class="card-image">
              <img src="{{ asset('/storage/images/' . $post->image) }}" class="news-img responsive-img">
            </div>
          </div>
          <div class="col m9">
            <div class="card-content">
              <h6 class="center-align not-cardheader">{{ $post->sublist->name }}</h6>
              <p class="center-align"><hr class="news-hr"></p>
              <p>{{ str_limit($post->description, 300) }}</p>
              <p><a class="btn-floating mybtn right"><i class="material-icons">arrow_forward</i></a></p>
            </div>
          </div>
        </div>
      </div>
    </div>
    @endforeach
  </div>
  <p class="center-align"><a href="" class="btn all-btn ">အားလံုး</a></p>
</section>

<section class="adv4">
  <div class="row">
    <div class="col s12">
      <div class="card">
        <div class="card-image">
          <a href="{{ $adv_ary[3]['link']}}"><img src="{{ asset('/storage/images/' . $adv_ary[3]['image']) }}" alt=""></a>
        </div>
      </div>
    </div>
  </div>
</section>

<section class="container-fluid blog blog5">
  <div class="row">
    <div class="col header s12 m4 offset-m4">
      <hr class="header-up-hr">
      <h5 class="center-align h">အေမးအေျဖ</h5>
      <hr class="header-down-hr">
    </div>
  </div>
  <div class="row">
    @foreach($categories as $category)
    <div class="col l6 m12 s12 hvr hvr-float-shadow">
      <a href="{{ url('/category/' . $category->id . '/questions') }}">
        <div class="card wow fadeInUp">
          <div class="row valign-wrapper padding">
            <div class="col m1">
              <div class="card-image">
                <!-- <img src="/image/person1.jpg" class="responsive-img question-img"> -->
                <!-- <span class="card-title">Card Title</span> -->
                <span class="fa fa-question-circle fa-4x green-text"></span>
              </div>
            </div>
            <div class="col m11">
              <div class="card-content">
                <!-- <h6 class="center-align">{{ $category->name }}</h6> -->
                <!-- <hr class="card-hr"> -->
                <p class="green-text">{{ $category->name }} အေၾကာင္းႏွင့္ပတ္သက္သည့္ ေမးခြန္းမ ်ား</p>
              </div>
            </div>
          </div>
        </div>
      </a>
    </div>
    @endforeach
  </div>
  <div class="container" style="width: 200px;">
    <div class="row">
      <p class="center-align left"><a href="{{ route('questions.create') }}" class="btn all-btn">ေမးရန္</a></p>
      <p class="center-align right"><a href="{{ route('questions.index') }}" class="btn all-btn">အားလံုး</a></p>
    </div>
  </div>
</section>

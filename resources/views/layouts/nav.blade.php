
<div class="container-fluid">
    <nav class="sub-nav">
        <div class="container">
            <div class="nav-wrapper">
            <a href="/" class="brand-logo left responsive-img">
              <img src="/image/logo1.png" alt="" style="width: 65px;height: 63px;">
            </a>

            <ul class="right show-on-med-and-up">
                <li>
                  <form method="get" action="/search" id="search">
                    <input name="q" type="text" size="40" placeholder="Search..."/>
                  </form>
                </li>
                <li class="hide-on-med-and-up"><a href=""><i class="fa fa-search"></i></a></li>
                @if(!Auth::check())
                  <li><a href="/register">Register</a></li>
                  <li><a href="/login">Login</a></li>
                @else
                  @if(Auth::user()->is_admin==1)
                  <li><a href="/admin">Dashboard</a></li>
                  @endif
                  <li><a href="/logout">Logout</a></li>
                @endif
            </ul>
            </div>
        </div>
    </nav>
</div>
<section class="main-adv">
  <?php $main_adv = App\Advertisement::where('type', 'main')->first(); ?>
  <a href="{{ $main_adv->link }}"><img src="{{ asset('/storage/images/' . $main_adv->image) }}" alt="" class="responsive-img"></a>
</section>

<div id="main-nav" class="stellarnav">
    <ul>
      <li><a href="{{ url('/') }}">မူလစာမ်က္ႏွာ</a></li>
      <?php
          $categories = App\Category::all();
      ?>
      @foreach($categories as $category)
      <li><a href="{{ route('categories.show', $category->id) }}">{{ $category->name }}</a>
          <ul>
            @foreach($category->lists as $list)
            <li><a href="{{ route('sub-lists.show', $list->id) }}">{{ $list->name }}</a></li>
            @endforeach
          </ul>
        </li>
        @endforeach
        <li><a href="{{ url('/show-book') }}">စာအုပ္မ်ား</a></li>
        <li><a href="{{ url('/show-price') }}">သီးႏွံေစ်းႏွဳန္းမ်ား</a></li>
    </ul>
</div>

<nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <ul class="navbar-nav"></ul>

    <ul class="navbar-nav ml-auto">
        <li class="nav-item">
            <a class="nav-link" href="#" onclick="document.querySelector('#logout').submit()">
                <i class="fas fa-sign-out-alt"></i>
            </a>
        </li>
    </ul>
    <form action="{{ route('logout') }}" method="post" id="logout">
        @csrf
    </form>
</nav>

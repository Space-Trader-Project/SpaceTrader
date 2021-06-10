<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="/">SpaceTrader</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav pull-right">
                <form class="form-inline my-lg-0">
                    <input class="form-control mr-sm-2" type="search" action="/ads" name="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-sm-0" type="submit">Search</button>
                </form>
<%--            <li class="nav-item">--%>
<%--                <a class="nav-link" href="/PostingProduct"><button class="btn btn-outline-warning" type="submit">Sell Your Goods</button></a>--%>
<%--            </li>--%>
<%--            <li class="nav-item ml-auto">--%>
<%--                <a class="nav-link"  href="">Watch List<i class="material-icons" style="font-size:17px;">star_border</i></a>--%>
<%--            </li>--%>
<%--            <li class="nav-item">--%>
<%--                <a class="nav-link" href="flickarchive.html">My Feed<i class="material-icons" style="font-size:17px;">dynamic_feed</i></a>--%>
<%--            </li>--%>
<%--            <li class="nav-item">--%>
<%--                <a class="nav-link" href="flickarchive.html">Cart<i class="material-icons" style="font-size:17px;">shopping_cart</i></a>--%>
<%--            </li>--%>
<%--            <script>--%>
<%--                $('#login').click(function() {--%>
<%--                    $("a").hide();--%>
<%--                });--%>

<%--            </script>--%>






            <li class="nav-item">
                <a class="nav-link" ${sessionScope.hidden} href="/register">Sign Up</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" ${sessionScope.hidden} href="/login">Log In</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/">Log out</a>
            </li>
        </ul>
    </div>
</nav>


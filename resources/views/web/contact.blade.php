@extends("web.layout.home")

@section("content")


<section class="site-section">
    <div class="container">
        <div class="row mb-4">
            <div class="col-md-6">
                <h1>İletişim</h1>
            </div>
            @if(Session::get('done'))
            <div class="col-md-12">
                <div class="alert alert-success" role="alert">
                    Gönderildi!
                </div>
            </div>
            <?php 
            Session::forget('done');
            ?>
            @endif
        </div>
        <div class="row blog-entries">
            <div class="col-md-12 col-lg-8 main-content">
                <form action='{{url("/sendcontact")}}' method="post">
                @csrf
                    <div class="row">
                        <div class="col-md-4 form-group">
                            <label for="name">Isim</label>
                            <input type="text" name="name" id="name" class="form-control" required>
                        </div>
                        <div class="col-md-4 form-group">
                            <label for="phone">Telefon Numarası</label>
                            <input type="text" name="phone" id="phone" class="form-control " required>
                        </div>
                        <div class="col-md-4 form-group">
                            <label for="email">Email</label>
                            <input type="email" name="email" id="email" class="form-control " required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 form-group">
                            <label for="message">Mesaj</label>
                            <textarea name="message" id="message" class="form-control " cols="30" rows="8" required></textarea>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <input type="submit" value="Gönder" class="btn btn-primary">
                        </div>
                    </div>
                </form>
            </div>

            @include('web.layout.sidebar')

        </div>
    </div>
</section>

<script>
document.addEventListener("DOMContentLoaded", function() {
    var elements = document.getElementsByTagName("INPUT");
    for (var i = 0; i < elements.length; i++) {
        elements[i].oninvalid = function(e) {
            e.target.setCustomValidity("");
            if (!e.target.validity.valid) {
                e.target.setCustomValidity("Lüfen şu alanı doldurun");
            }
        };
        elements[i].oninput = function(e) {
            e.target.setCustomValidity("");
        };
    }
})</script>

@endsection
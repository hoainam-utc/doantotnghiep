@if(isset($images) && count($images) > 0)
<div style="white-space: nowrap;width: inherit;overflow-x: scroll;width: 100%" class="lists-album">
    @foreach($images ?? [] as $item)
        <a href="">
            <img class="js-img-item" src="{{ pare_url_file($item->pi_slug) }}" style="width: 100px;height: 100px;object-fit: cover" alt="">
        </a>
    @endforeach
</div>
@endif

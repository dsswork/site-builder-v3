<x-cards.collapsed title="Tags" half>
    <div class="row">
    @foreach($tags as $tag)
        <div class="col-md-6">
            <input type="checkbox"
                   id="{{ 'tag-' . $tag->id }}"
                   name="tags[]"
                   value="{{ $tag->id }}"
            @checked($currentTags->contains($tag))>
            <label class="mx-1"
                   for="{{ 'tag-' . $tag->id }}">{{ $tag->name }}</label>
        </div>
    @endforeach
    </div>
</x-cards.collapsed>

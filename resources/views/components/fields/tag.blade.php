<div class="form-group">
    <label for="">Tag</label>
    <select name="{{ $name }}" id="" class="form-control">
        @foreach($tags as $tag)
            <option
                @selected($tag->id == ($value ?? ''))
                value="{{ $tag->id }}">{{ $tag->name }}</option>
        @endforeach
    </select>
</div>

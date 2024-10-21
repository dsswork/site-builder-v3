<x-admin.layout.layout title="Edit Tag">
    <form action="{{ route('admin.tags.update', compact('tag')) }}"
          method="post"
          class="row">
        @csrf
        @method('put')
        <x-cards.simple title="Edit page" half>
            <div class="form-group">
                <label for="">Name</label>
                <input type="text" name="name" class="form-control"
                       value="{{ $tag->name }}"
                       required>
                @error('name')
                {{ $message }}
                @enderror
            </div>
            <div>
                <button type="submit" class="btn btn-dark">Save</button>
            </div>
        </x-cards.simple>
    </form>
    <x-modals.delete :model="$tag" />
</x-admin.layout.layout>

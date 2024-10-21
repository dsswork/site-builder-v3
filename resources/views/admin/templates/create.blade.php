<x-admin.layout.layout title="Create Template">
    <form action="{{ route('admin.templates.store') }}"
          enctype="multipart/form-data"
          method="post"
          class="row">
        @csrf
        <x-cards.simple title="Create template" half>
            <div class="form-group">
                <label for="">Type</label>
                <select name="type" id="" class="form-control">
                    @foreach(\App\Enums\TemplateTypeEnum::cases() as $type)
                        <option value="{{ $type->value }}">{{ $type->name() }}</option>
                    @endforeach
                </select>
            </div>
            <x-fields.input label="Name" req />

            <div class="form-group">
                <label for="customFile">Cover</label>
                <div class="custom-file">
                    <input type="file" class="custom-file-input" name="cover" id="customFile">
                    <label class="custom-file-label" for="customFile"></label>
                </div>
                @error('cover')
                    {{ $message }}
                @enderror
            </div>
            <div>
                <button type="submit" class="btn btn-dark">Create</button>
            </div>
        </x-cards.simple>
    </form>
</x-admin.layout.layout>

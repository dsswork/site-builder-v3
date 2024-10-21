<x-admin.layout.layout title="Templates">
    <a type="button" class="btn btn-dark"
       href="{{ route('admin.templates.create-general') }}">Create Template</a>

    <h2 class="my-4">GENERAL</h2>
    <x-tables.simple
        :collection="$templates"
        :fields="['id', 'name', 'slug']"
        edit
        image="cover"
    />

</x-admin.layout.layout>

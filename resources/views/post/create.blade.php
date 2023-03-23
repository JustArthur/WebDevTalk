<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Créer un post') }}
        </h2>
    </x-slot>

    <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">

        <div class="my-5">
            @foreach ($errors->all() as $error)
                <span class="text-sm text-red-600 space-y-1">{{ $error }}</span>
            @endforeach
        </div>

        <form action="{{ route('posts.store') }}" method="post" enctype="multipart/form-data">

            @csrf
        
            <label style="margin-top:20px;" for="title" class="block font-medium text-sm text-gray-700">Titre du post</label>
            <input class='border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm' id="title" name="title" />

            <label style="margin-top:10px;" for="content" class="block font-medium text-sm text-gray-700">Contenu du post</label>
            <textarea name="content" id="content" cols="150" rows="5"></textarea>

            <label style="margin-top:10px;" for="image" class="block font-medium text-sm text-gray-700">Image du post</label>
            <input type="file" id="image" name="image" />

            <label style="margin-top:10px;" for="category" class="block font-medium text-sm text-gray-700">Catégorie du post</label>

            <select name="category" id="categorie">
                @foreach ($categories as $category)
                    <option value="{{ $category->id }}">{{ $category->name }}</option>  
                @endforeach
            </select>

            <button type='submit' style="margin-top:10px;" class='block items-center px-4 py-2 bg-gray-800 border border-transparent rounded-md font-semibold text-xs text-white uppercase tracking-widest hover:bg-gray-700 focus:bg-gray-700 active:bg-gray-900 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2 transition ease-in-out duration-150'>
                Créer mon post
            </button>
        </form>
    </div>
</x-app-layout>
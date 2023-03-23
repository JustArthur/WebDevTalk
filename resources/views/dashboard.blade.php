<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">

            @if (session('success'))
                {{ session('success') }}
            @endif

            @foreach ($posts as $post)
                <div class="flex items-center">
                    <a href="{{ route('posts.edit', $post) }}" class="bg-gray-100 px-2 py-3 block">Editer {{ $post->title }}</a>
                    <a href="#" class="bg-red-500 px-2 py-3 block">Supprimer {{ $post->title }}</a>
                </div>
            @endforeach
        </div>
    </div>
</x-app-layout>

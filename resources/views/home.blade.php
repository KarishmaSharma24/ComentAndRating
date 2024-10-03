@extends('layouts.app')

@section('content')
<link rel="stylesheet" href="{{ asset('custom_files/cs/home.css') }}">
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">{{ __('Dashboard') }}

                    @if (session('status'))
                    <div class="alert alert-success" role="alert">
                        {{ session('status') }}
                    </div>
                    @endif

                    @if(session()->has('message'))
                    <div class="alert alert-success">
                        {{ session()->get('message') }}
                    </div>
                    @endif
                </div>

                <div class="card-body">
                    <div class="row">
                        <table class="table table-hover" id="datatable">
                            <thead>
                                <tr>
                                    <th scope="col">S.No.</th>
                                    <th scope="col">Title</th>
                                    <th scope="col">Writer</th>
                                    <th scope="col">Description</th>
                                    <th scope="col">Rating</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @php $j=1; @endphp
                                @foreach($books as $book)
                                <tr value="{{ $book->id }}">
                                    <th>{{ $j++ }}</th>
                                    <td>

                                        {{ $book->title }}
                                    </td>
                                    <td>{{ $book->writer }}</td>
                                    <td>{{ $book->description }} </td>
                                    <td>
                                        <div class="rate">
                                            @for ($i = 5; $i >= 1; $i--)
                                            <input type="radio" id="star{{ $i }}-{{ $book->id }}" class="rateClass" name="rating" data-id="{{ $book->id }}" value="{{ $i }}" {{$book->user_book_rating>=$i?"checked":""}}/>
                                            <label for="star{{ $i }}-{{ $book->id }}" title="text" @if($book->user_book_rating>=$i) style="color:#ffc700" @endif>{{ $i }} star{{ $i > 1 ? 's' : '' }} </label>
                                            @endfor
                                        </div>
                                    </td>
                                    <td>
                                        <button type="button" class="btn btn-primary comment text-white" id="comment"><a href="{{ route('comment.create', $book->id)}}" class="text-white">Comment</a>
                                        </button>
                                    </td>

                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


@endsection

@section('script')
<script>
    $(document).ready(function() {
        $('#datatable').DataTable({
            layout: {
                bottomEnd: {
                    paging: {
                        firstLast: false
                    }
                }
            }
        });
    });
</script>
<script src="{{ asset('custom_files/js/home.js')}}"></script>
@endsection()
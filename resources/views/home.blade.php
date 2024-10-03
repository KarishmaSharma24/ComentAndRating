@extends('layouts.app')

@section('content')
<style>
    .rate {
        float: left;
        height: 46px;
        padding: 0 10px;
    }

    .rate:not(:checked)>input {
        position: absolute;
        display: none;
    }

    .rate:not(:checked)>label {
        float: right;
        width: 1em;
        overflow: hidden;
        white-space: nowrap;
        cursor: pointer;
        font-size: 30px;
        color: #ccc;
    }

    .rated:not(:checked)>label {
        float: right;
        width: 1em;
        overflow: hidden;
        white-space: nowrap;
        cursor: pointer;
        font-size: 30px;
        color: #ccc;
    }

    .rate:not(:checked)>label:before {
        content: '★ ';
    }

    .rate>input:checked~label {
        color: #ffc700;
    }

    .rate:not(:checked)>label:hover,
    .rate:not(:checked)>label:hover~label {
        color: #deb217;
    }

    .rate>input:checked+label:hover,
    .rate>input:checked+label:hover~label,
    .rate>input:checked~label:hover,
    .rate>input:checked~label:hover~label,
    .rate>label:hover~input:checked~label {
        color: #c59b08;
    }

    .star-rating-complete {
        color: #c59b08;
    }

    .rating-container .form-control:hover,
    .rating-container .form-control:focus {
        background: #fff;
        border: 1px solid #ced4da;
    }

    .rating-container textarea:focus,
    .rating-container input:focus {
        color: #000;
    }

    .rated {
        float: left;
        height: 46px;
        padding: 0 10px;
    }

    .rated:not(:checked)>input {
        position: absolute;
        display: none;
    }

    .rated:not(:checked)>label {
        float: right;
        width: 1em;
        overflow: hidden;
        white-space: nowrap;
        cursor: pointer;
        font-size: 30px;
        color: #ffc700;
    }

    .rated:not(:checked)>label:before {
        content: '★ ';
    }

    .rated>input:checked~label {
        color: #ffc700;
    }

    .rated:not(:checked)>label:hover,
    .rated:not(:checked)>label:hover~label {
        color: #deb217;
    }

    .rated>input:checked+label:hover,
    .rated>input:checked+label:hover~label,
    .rated>input:checked~label:hover,
    .rated>input:checked~label:hover~label,
    .rated>label:hover~input:checked~label {
        color: #c59b08;
    }

    table#datatable th:nth-child(5),
    table#datatable td:nth-child(5) {
        width: 250px;
        /* Adjust rating column width */
    }
</style>
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


                    <!-- {{ __('You are logged in!') }} -->

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

        $('input.rateClass').on('click', function() {
            var rating = $(this).val();
            var bookId = $(this).data('id');
            console.log("bookId" + bookId);
            // console.log();

            $.ajax({
                url: "{{ route('rating.store') }}",
                type: 'POST',
                data: {
                    rating: rating,
                    book_id: bookId
                },
                success: function(response) {
                    console.log(response);
                    if (response.status == 200) {
                        alert('Rating submitted: ' + rating);
                    } else {
                        alert('Rating nto updated');
                    }
                    window.location.reload();

                },
                error: function(xhr) {

                    alert('An error occurred while submitting the rating.');
                }
            });
        });

    });
</script>

@endsection()
@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row justify-content-center">
        <h1>Add Review</h1>
        <form action="{{ route('comment.store') }}" method="POST">
            @csrf
            <input type="hidden" id="bookId" name="book_id" value="{{$id}}" />

            <!-- <div class="col">
                <div class="rate">
                    <input type="radio" id="star5" class="rate" name="rating" value="5" />
                    <label for="star5" title="text">5 stars</label>
                    <input type="radio" id="star4" class="rate" name="rating" value="4" />
                    <label for="star4" title="text">4 stars</label>
                    <input type="radio" id="star3" class="rate" name="rating" value="3" />
                    <label for="star3" title="text">3 stars</label>
                    <input type="radio" id="star2" class="rate" name="rating" value="2">
                    <label for="star2" title="text">2 stars</label>
                    <input type="radio" id="star1" class="rate" name="rating" value="1" />
                    <label for="star1" title="text">1 star</label>
                </div>
            </div> -->
            <div class="col-md-12">
                <textarea class="form-control" placeholder="Leave a comment here" name="description" id="description" style="height: 100px; resize: none;"></textarea>
                @error('description')
                <span class="text-danger">{{ $message }}</span>
                @enderror
            </div>
            <div class="footer mt-2">
                <button type="submit" class="btn btn-primary" id="submitCommnet">Add</button>
            </div>
        </form>
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

@endsection()
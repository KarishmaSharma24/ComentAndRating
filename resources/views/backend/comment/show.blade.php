@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">{{ __('Comments') }}</div>

                <div class="card-body">
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

                    <!-- {{ __('You are logged in!') }} -->

                    <div class="row">
                        <table class="table table-hover" id="datatable">
                            <thead>
                                <tr>
                                    <th scope="col">S.No.</th>
                                    <th scope="col">Book</th>
                                    <th scope="col">User</th>
                                    <th scope="col">Review</th>
                                    <th scope="col">Comment</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @php $i=1; @endphp
                                @foreach($comments as $comment)
                                <tr>
                                    <th scope="row">{{ $i++ }}</th>
                                    <td>{{ $comment->book_id }}</td>
                                    <td>{{ $comment->user_id }}</td>
                                    <td>{{ $comment->rating }}</td>
                                    <td>{{ $comment->comment }}</td>
                                    <td>
                                        <button type="button" class="btn btn-primary comment text-white" id="comment">
                                          <a href="#" class="text-white">Comment</a>
                                        </button>
                                        <button type="button" class="btn btn-primary comment text-white" id="comment">
                                          <a href="#" class="text-white">View</a>
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

@endsection()
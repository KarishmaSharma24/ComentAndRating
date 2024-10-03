$('input.rateClass').on('click', function() {
      var rating = $(this).val();
      var bookId = $(this).data('id');
     
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
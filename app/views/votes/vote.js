// Need to make something relevant here
$('#pic1 .votecount').replaceWith("<strong>Votes: <%= @vote.picture.votes_count + 1 %></strong>");
$('#pic1 .votebox').fadeOut()
$('#pic1 .votebox').replaceWith('Voted!')

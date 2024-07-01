n, m = gets.split.map(&:to_i)
products_vote = (gets.split.map(&:to_i)).sort
#puts products_vote
# if <= products.sum / (4 * m)
products_vote_sum = products_vote.sum


count = 0
#puts n, m
border =  products_vote_sum * (1.0 / (4.0 * m))
#puts  border
puts products_vote[-m] < border ? :No : :Yes

# (0..n-1).each { |product|
#   if border < products_vote[product]
#     count += 1
#   end
#   print border, " ",products_vote[product],"\n"
# }

# if count >= m
#   puts "Yes"
# else
#   puts "No"
# end  

n, m = gets.split.map(&:to_i)
products_vote = (gets.split.map(&:to_i))#.sort!.reverse!
# if <= products.sum / (4 * m)
products_vote_sum = products_vote.sum 
count = 0
#puts n, m
border =  products_vote_sum * (1.0 / (4.0 * m))
#puts  border

(0..n-1).each { |product|
  if border < products_vote[product]
    count += 1
  end
}

if count >= m
  puts "Yes"
else
  puts "No"
end  

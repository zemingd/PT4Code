n, m = gets.split.map {|item| item.to_i}
product = gets.split.map {|item| item.to_i}
total_vote = product.inject(:+)
is_choose = product.map {|item| item >= total_vote.to_f / (4 * m)}

if m <= is_choose.count(true) then
    puts "Yes"
else
    puts "No"
end

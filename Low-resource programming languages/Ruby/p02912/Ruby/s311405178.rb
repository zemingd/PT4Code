
input = gets.chomp.split(" ").map(&:to_i)
prices = gets.chomp.split(" ").map(&:to_i).sort.reverse
i = 0
now_place = 0
final = input[1]-1
while i < input[1] do

  prices[now_place] = prices[now_place]/2
  if final > prices.length
    final = prices.length - 1
  end
  if prices[now_place] < prices[final]
    now_place += 1
    final += 1
  end
  i += 1
  final -= 1
end
sum = 0
prices.each do |e|
  sum += e
end
puts sum

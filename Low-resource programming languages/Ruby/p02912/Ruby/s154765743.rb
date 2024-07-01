
input = gets.chomp.split(" ").map(&:to_i)
prices = gets.chomp.split(" ").map(&:to_i).sort.reverse
i = 0
now_place = 0
final = input.min - 1
while i < input[1] do
  if now_place >= input[0]
    now_place -=1
  end
  prices[now_place] = prices[now_place]/2
  if prices[now_place] <= prices[final]
    now_place += 1
  else
    final -= 1
  end
  i += 1
end
sum = 0
prices.each do |e|
  sum += e
end
puts sum

a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i

ctn = 0
0.upto(a) do |coin_500|
  0.upto(b) do |coin_100|
    0.upto(c) do |coin_50|
      sum = coin_500 * 500 + coin_100 * 100 + coin_50 * 50
      if sum == x
        ctn += 1
      end
    end
  end
end

puts ctn
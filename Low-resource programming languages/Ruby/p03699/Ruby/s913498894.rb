n = gets.to_i
ss = $stdin.read.split.map(&:to_i)
sum = 0

n.downto(1) do |i|
  ss.combination(i).each do |c|
    tmp = c.inject(:+)
    next if (tmp % 10).zero?
    sum = tmp if sum < tmp
    break if sum != 0
  end

  break if sum != 0
end

puts sum
n, k = gets.chomp.split(" ").map(&:to_i)
hs = []
n.times do
  hs << gets.chomp.to_i
end

hs.sort!.reverse!

calc = []
ans = []

hs.each do |h|
  if calc.length < k
    calc << h
  end
  if calc.length == k
    ans << calc.first - calc.last
    calc.shift
  end
end

puts ans.min
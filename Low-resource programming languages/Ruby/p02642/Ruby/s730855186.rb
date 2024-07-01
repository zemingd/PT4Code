require "set"

n = gets.to_i
m = 10**6
a = gets.split.map(&:to_i).sort
num = a.tally
seen = Set.new # 倍数消込

ans = 0
a.each do |i|
  next if seen === i
  ans += 1 if num[i] == 1

  i.step(m, i) do |j|
    seen << j
  end
end
puts ans

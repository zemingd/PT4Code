n = gets.chomp.to_i
input = Array.new(n) { gets.chomp.split('') }
sorted = Array.new
ans = 0
input.each do |str|
  ans += sorted.count(str.sort)
  sorted << str.sort
end
p ans

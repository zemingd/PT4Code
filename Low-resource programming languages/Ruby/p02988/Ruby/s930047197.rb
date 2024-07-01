n = gets.chomp.to_i
input = gets.chomp.split(' ').map(&:to_i)
ans = 0
input.each_cons(3) do |a, b, c|
  array = Array.new
  pushed = array.push(a, b, c)
  sorted = pushed.sort
  ans += 1 if pushed[1] == sorted[1]
end
puts ans

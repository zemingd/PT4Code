n = gets.to_i
A = gets.split().map(&:to_i)

B = A.sort!.reverse!
a = []
t = -1

B.each do |x|
  if t == x
    t = -1
    a.push(x)
    break if a.size > 1
  else
    t = x
  end
end

puts a.size > 1 ? a[0]*a[1] : 0
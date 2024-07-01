n = gets.to_i
A = gets.split().map(&:to_i)

B = A.sort!.reverse!
a = []
t = nil

B.each do |x|
  if t == x
    t = nil
    a.append(x)
    break if a.size > 2
  else
    t = x
  end
end

p a.size > 2 ? a[0]*a[1] : 0
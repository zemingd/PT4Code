N = gets.to_i
A = []
N.times {
  A << gets.to_i
}

a_max = A.max
b = Array.new(a_max + 1, 0)

A.each do |a|
  b[a] += 1
end

count = 0
c = b.sort.reverse
p c

while c[0] != 0 do
  d = c.shift 
  if d % 2 == 1 then
    count += 1
  end
end
  
p count
n,k = gets.split.map(&:to_i)
v = gets.split.map(&:to_i)
max = -10**9
m = [n,k].min
for i in 0..m
  for j in 0..i
    z = (n-i+j-1)
    h = v.select.with_index{|num,i| i < j || i > z}
    h.sort!
    h != [] ? a = h.inject(:+) : a = 0
    h.each_with_index do |o,l|
      a -= o if o < 0 && l+1 <= (k-i)
    end
    max = a if max < a
  end
end
puts max
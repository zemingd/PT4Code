def operate(a, ops)
  n = a.size
  m = ops.size
  i = 0
  m.times do |j|
    b, c = ops[j]
    b.times do
      return if i == n
      return if c <= a[i]
      a[i] = c
      i += 1
    end
  end
end


n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort

ops = []
m.times do
  ops << gets.split.map(&:to_i)
end
ops.sort!{|a,b| -(a[1] <=> b[1])}

operate(a, ops)

puts a.inject{|result,x| result += x}

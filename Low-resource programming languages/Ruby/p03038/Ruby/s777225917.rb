n,m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
ope = []
m.times do
  p,q = gets.split.map(&:to_i)
  ope << [p,q]
end
a.sort!
ope.sort!{|e,f| f[1] <=> e[1]}

sum = 0

ope.each do |i|
  if a[0] >= i[1]
    sum += a.inject(:+)
    a = [0]
    break
  end
  i[0].times do
    if a[0] < i[1]
      a.delete_at(0)
      sum += i[1]
    else
      break
    end
  end
end

puts sum + a.inject(:+)
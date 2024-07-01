n = gets.to_i
a = gets.split.map(&:to_i).sort
q = gets.to_i
b, c = Array.new(q) { gets.split.map(&:to_i) }.transpose

rl = a.slice_when(&:!=).map { |e| [e.first, e.size] }
sum = 0
rl.each { |i, j| sum += i * j }

b.zip(c).each do |b, c|
  if e = rl.assoc(b)

    if f = rl.assoc(c)
      rl << [c, e[1] + f[1]]
      rl.delete(f)
    else
      rl << [c, e[1]]
    end

    sum += (c - e[0]) * e[1]
    puts sum

    rl.delete(e)
  else
    puts sum
  end
end
n = gets.to_i
a = gets.split.map(&:to_i).sort
q = gets.to_i
b, c = Array.new(q) { gets.split.map(&:to_i) }.transpose
rl = {}
a.slice_when(&:!=).map { |e| rl[e.first] = e.size }
sum = 0
rl.each { |i, j| sum += i * j }

b.zip(c).each do |b, c|
  if e = rl[b]

    if f = rl[c]
      rl[c] = rl[b] + rl[c]
      rl.delete(f)
    else
      rl[c] = rl[b]
    end

    sum += (c - b) * rl[b]
    puts sum

    rl.delete(e)
  else
    puts sum
  end
end

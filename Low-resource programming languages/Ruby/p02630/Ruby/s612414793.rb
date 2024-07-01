n = gets.to_i
a = gets.split.map(&:to_i).sort
q = gets.to_i

rl = {}
a.slice_when(&:!=).map { |e| rl[e.first] = e.size }
sum = 0
rl.each { |i, j| sum += i * j }

q.times do
  b, c = gets.split.map(&:to_i)

  if rl[b]
    if rl[c]
      rl[c] += rl[b]
    else
      rl[c] = rl[b]
    end

    sum += (c - b) * rl[b]
    puts sum

    rl.delete(b)
  else
    puts sum
  end
end
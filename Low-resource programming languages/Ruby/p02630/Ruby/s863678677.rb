N = gets.to_i
Ary = gets.split.map(&:to_i)
Q = gets.to_i
Qary = []
Q.times do
  Qary.push(gets.split.map(&:to_i))
end

map = {}
first_sum = 0
Ary.each do |e|
  first_sum += e
  if map[e]
    map[e] += 1
  else
    map[e] = 1
  end
end

Q.times do |q|
  b, c = Qary[q]

  gap = c - b

  #binding.irb

  if map[b]
    first_sum += gap * map[b]
    if map[c]
      map[c] += map[b]
    else
      map[c] = map[b]
    end

    map[b] = 0
    puts first_sum
  else
    puts first_sum
  end
end

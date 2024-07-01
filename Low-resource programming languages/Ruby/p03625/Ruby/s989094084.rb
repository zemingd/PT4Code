n = gets.to_i
an = gets.strip.split.map(&:to_i).sort.reverse

memo = {}
two = []
an.each do |a|
  if memo[a].nil?
    memo[a] = 1
  else
    memo[a] += 1
  end

  if memo[a] == 2
    two << a
  end
end

puts two.size < 2 ? 0 : two[0] * two[1]

def mC2(m)
  m * (m - 1) / 2
end

N = $stdin.gets.to_i
A = $stdin.gets.split.map {|i| i.to_i }
counts = {}
A.each do |a|
  if counts.has_key?(a)
    counts[a] += 1
  else
    counts[a] = 1
  end
end
nums = counts.keys.sort
A.each do |a|
  total = 0
  nums.each do |n|
    c = counts[n]
    if n == a
      c -= 1
    end
    total += mC2(c)
  end
  puts total
end

N = gets.to_i
AS = gets.split.map(&:to_i)

as = AS.sort.reverse
if as[-1] == 1
  puts AS.count - 1
  exit
end

count = N - 1
i = 0
while i < N
  a = as[i]
  while as[i + 1] == a # skip same numbers
    count -= 1
    i += 1
  end

  (1...N - i).each do |j|
    if a % as[-j] == 0
      count -= 1
      i += 1
      break
    end
  end
  i += 1
end

puts count

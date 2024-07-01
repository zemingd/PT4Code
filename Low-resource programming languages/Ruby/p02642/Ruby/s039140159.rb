N = gets.to_i
A = gets.split.map(&:to_i).sort.uniq

if A.size == 1
  puts 0
  exit
end

count = 0
a = A

until a.empty?
  next_a = []
  min = a.first
  (a.size - 1).downto(0) do |i|
    if a[i] < min * 2
      next_a += a[1..i]
      break
    end
    unless a[i] % min == 0
      next_a << a[i]
    end
  end

  count += 1
  a = next_a
end

puts count
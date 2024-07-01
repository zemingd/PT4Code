N = gets.to_i
a = gets.chomp.split.map(&:to_i).sort
max_count = 1

i = j = 0

while i < a.size
  if a[i] - a[j] <= 2
    max_count = [max_count, i - j + 1].max
    i += 1
  else
    j += 1
  end
end

puts max_count
_n, _m, k = gets.chomp.split(' ').map(&:to_i)
a = gets.chomp.split(' ').map(&:to_i)
b = gets.chomp.split(' ').map(&:to_i)
time = 0
count = 0
while (!a.empty? || !b.empty?) && time < k
  if a.empty?
    time += b.shift
  elsif b.empty?
    time += a.shift
  else
    if a.first < b.first
      time += a.shift
    else
      time += b.shift
    end
  end
  count += 1 if time < k
end
puts count
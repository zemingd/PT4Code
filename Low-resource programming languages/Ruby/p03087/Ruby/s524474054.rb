n, q = gets.split.map(&:to_i)
s = gets.chomp
array = Array.new(n, 0)
(0..n-2).each do |i|
  array[i+1] = array[i]
  if s[i..i+1] == 'AC'
    array[i+1] += 1
  end
end

q.times do
  l, r = gets.split.map(&:to_i)
  puts array[r-1] - array[l-1]
end
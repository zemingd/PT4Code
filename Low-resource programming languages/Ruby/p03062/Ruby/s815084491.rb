n = gets.to_i
a = gets.split.map(&:to_i).sort
if n == 1
  puts a[0]
  exit
end

ans = 0
a.each_slice(2) { |s| ans += s.inject(:+).abs }
puts ans
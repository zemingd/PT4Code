n,m = gets.chomp.split().map(&:to_i)
x = gets.chomp.split().map(&:to_i)

if n>=m
  puts 0
  exit
end

x.sort!

diffs = Array.new(m-1)
(m-1).times do |i|
  diffs[i] = x[i+1] - x[i]
end

diffs.sort!

#p diffs
puts diffs.slice(0, m-n).inject(:+)
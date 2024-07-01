n = gets.chomp.to_i

if n < 105
  puts 0
  exit
end

cnt = 105.upto(n).select(&:odd?).count do |i|
  x = 1.upto(i).count do |j|
    i % j == 0
  end
  x == 8
end

puts cnt

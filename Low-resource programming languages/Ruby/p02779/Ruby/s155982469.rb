n = gets.chomp.to_i
h = gets.chomp.split.map(&:to_i)

h_uni = h.uniq

if h.length == h_uni.length
  puts 'YES'
else
  puts 'NO'
end

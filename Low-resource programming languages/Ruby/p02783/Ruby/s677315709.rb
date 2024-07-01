h, a = gets.chomp.split.map(&:to_i)
if h > a
  puts (h / a).to_f.ceil
else h <= a
  puts 1
end

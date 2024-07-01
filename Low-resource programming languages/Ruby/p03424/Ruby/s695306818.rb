n = gets.chomp.to_i
ary = gets.split(" ").map(&:to_i)

if ary.uniq == 3
  puts "Three"
else
  puts "Four"
end

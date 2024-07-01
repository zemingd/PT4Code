n = gets.to_i
num = gets.strip.split.map(&:to_s)
if num.include?("Y")
  puts "Four"
else
  puts "Three"
end


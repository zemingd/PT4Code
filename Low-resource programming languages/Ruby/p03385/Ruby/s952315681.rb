str = gets.chomp.split("")
h = Hash.new(0)
str.each do |c|
    h[c] += 1
end

if h["a"] == 1 && h["b"] == 1 && h["c"] == 1  then
    puts "Yes"
else
    puts "No"
end
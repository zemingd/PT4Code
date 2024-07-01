n = gets.chomp.to_i
s = gets.chomp.split(" ")
hash = Hash.new(0)
s.each do |i|
    hash[i] += 1
end
if hash.size == 3
    puts "Three"
else
    puts "Four"
end
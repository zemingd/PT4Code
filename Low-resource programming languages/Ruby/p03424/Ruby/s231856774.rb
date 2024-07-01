N = gets.chomp.to_i
arr = gets.chomp.split(' ')

y = arr.select {|item| item == "Y"}

if y.count == 0
  puts "Three"
else
  puts "Four"
end

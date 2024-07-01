_a = gets.to_i
b = gets

puts b.gsub('ABC', '*').split('').select{|c| c == '*'}.count
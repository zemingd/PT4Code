a = gets.to_i
b = gets

b.gsub('ABC', '*').split('').select{|c| c == '*'}.count
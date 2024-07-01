n = gets.chomp.to_i
s = gets.chomp.split('')

abc = 'abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz'
abc = abc.upcase
result = ''

s.each do |char|
  result += abc[abc.index(char)+n]
end

puts result

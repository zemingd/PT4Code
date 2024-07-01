input = gets.chomp
str = 'abcdefghijklmnopqrstuvwxyz'
list = {}

str.split('').each do |c|
  list[c] = 0
end

input.split('').each do |c|
  c = c.downcase
  list[c] = list[c] + 1 if str.include?(c)
end

list.each do |k,v|
  puts "#{k} : #{v}"
end
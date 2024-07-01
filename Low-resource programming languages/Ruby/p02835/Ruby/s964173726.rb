a,b,c = gets.split(' ').map(&:to_i)
flag = 0
flag = 1 if a+b+c >= 22
puts 'bust' if flag = 1
puts 'win' if flag = 0

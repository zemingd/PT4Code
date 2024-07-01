# N = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
# S = gets.chomp.chars

a=a[0]
p (a + (a*a) + (a*a*a))

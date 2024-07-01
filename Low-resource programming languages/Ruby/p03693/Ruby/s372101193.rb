r,g,b = gets.split.map(&:to_i)

num = r*100+g*10+b

puts num%4==0?"YES":"NO"
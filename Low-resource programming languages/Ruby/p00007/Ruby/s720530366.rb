num = 100000
syuu = gets.to_i
syuu.times{
  num = (num*1.05).to_i
  a = num % 1000
  num += 1000-a if a != 0
}
p num
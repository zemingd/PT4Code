n = gets.chomp.to_i
a = (1..150).map{|i|i}
combs = a.repeated_permutation(3).to_a

def hoge(x,y,z)
  x ** 2 + y ** 2 + z ** 2 + x*y + y*z + z*x
end

hash = {}
combs.each do |c|
  result = hoge(*c)
  hash[result] ? hash[result] += 1 : hash[result] = 1
end

n.times do |i|
  puts hash[i+1] ? hash[i+1] : 0
end
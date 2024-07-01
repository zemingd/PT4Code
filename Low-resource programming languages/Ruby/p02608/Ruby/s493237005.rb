n = gets.chomp.to_i
a = (1..250).map{|i|i}
combs = a.repeated_combination(3).to_a

def hoge(x,y,z)
  x ** 2 + y ** 2 + z ** 2 + x*y + y*z + z*x
end

hash = {}
combs.each do |c|
  result = hoge(*c)
  if (c[0] == c[1] && c[1] == c[2])
  	hash[result] ? hash[result] += 1 : hash[result] = 1
  else
    hash[result] ? hash[result] += 3 : hash[result] = 3
  end
end

n.times do |i|
  puts hash[i+1] ? hash[i+1] : 0
end
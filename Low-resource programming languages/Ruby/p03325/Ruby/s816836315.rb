n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)

def f(x)
  y = Math.log2(x).floor
  while y >= 0 and x % (2 ** y) > 0 do
   y -= 1
  end
  return y
end

puts a.map{|x| f(x)}.reduce(:+).to_s
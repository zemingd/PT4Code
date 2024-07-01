n = gets.to_i
a = gets.split.map(&:to_i)
class Array
  def lcm
    inject(:lcm)
  end

  def gcd
    inject(:gcd)
  end
end
sc = a.gcd

tom = Array.new(n)
tom[0] = a[0]
for i in 1..(n-1)
  tom[i] = tom[i-1]*a[i]
end
pc = true
for j in 1..(n-1)
  pc = false if a[i].gcd(tom[i-1]) != 1
end
if pc == true
  puts "pairwise coprime"
elsif sc == 1
  puts "setwise coprime"
else
  puts "not coprime"
end

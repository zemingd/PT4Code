n,x = gets.chomp.split.map(&:to_i)
ary_x = gets.chomp.split.map(&:to_i)

ary_x << x
ary_x.sort!
# p ary_x

diff = []
n.times do |i|
  diff << ary_x[i+1]-ary_x[i]
end
# p diff

def gcd(a, b)
  return a if b==0
  gcd(b, a%b)
end

gcd = diff[0]
diff.each do |item|
  gcd = gcd(gcd,item)
end



puts gcd

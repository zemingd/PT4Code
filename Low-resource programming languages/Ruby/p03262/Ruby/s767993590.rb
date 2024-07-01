class Array
def gcd
  self.inject{|a,b| a.gcd(b)}
end
end

ary =$stdin.readlines
p ary
a =ary[0].split.map!(&:to_i)
n = a[0]
x = a[1]
cities = ary[1].chomp.split.map!(&:to_i)
p x
p cities
    array = []
    for i in (0..n-1)
      array.push((cities[i] - x).abs)
    end
    p array
  answer = array.gcd
puts answer

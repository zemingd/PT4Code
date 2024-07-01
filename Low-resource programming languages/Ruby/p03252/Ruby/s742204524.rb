class Array
def gcd2
  self.inject{|a,b| a.gcd(b)}
end
end

ary =$stdin.readlines
a =ary[0].split.map!(&:to_i)
n = a[0]
x = a[1]
cities = ary[1].chomp.split.map!(&:to_i)

    array = []
    for i in (0..n-1)
      array.push((cities[i] - x).abs)
    end
  answer = array.gcd2
  p n
  p x
  p cities
  p array

puts answer

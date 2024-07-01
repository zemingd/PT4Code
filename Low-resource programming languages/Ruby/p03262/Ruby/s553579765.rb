class Array
def gcd
  self.inject{|a,b| a.gcd(b)}
end
end

ary =$stdin.readlines
n = ary[0][0].to_i
x = ary[0][-2].to_i
cities = ary[1].chomp.split.map!(&:to_i)


    array = []
    for i in (0..n-1)
    array.push((cities[i]-x).abs)
    end
  answer = array.gcd
puts answer
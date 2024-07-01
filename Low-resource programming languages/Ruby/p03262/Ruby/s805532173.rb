N,X = gets.split.map(&:to_i)
x = gets.strip.split.map(&:to_i)
a = []

for i in 0..N-1

    a[i] = (x[i]-X).abs

end

class Array
def gcd
    self.inject{|a,b| a.gcd(b)}
end
end 

puts a.gcd 
class Array
  def lcm
    self.inject{|a,b| a.lcm(b)}
  end

  def gcd
    self.inject{|a,b| a.gcd(b)}
  end
end

n = gets.chomp.to_i
a = []
a = gets.chomp.split.map(&:to_i)

#p n 
#p a 
#p a.lcm
cnt = 0
t = a.lcm
#p t
for i in 0..a.length-1
    cnt += (t-1) % a[i]
    #p cnt
end
puts cnt
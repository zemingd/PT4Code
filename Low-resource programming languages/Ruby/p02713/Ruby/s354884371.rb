class Array
  #def lcm
  #  self.inject{|a,b| a.lcm(b)}
  #end
  def gcd
    self.inject{|a,b| a.gcd(b)}
  end
end

K = gets.chomp.to_i               # 単一整数
K.freeze

ans = 0

for a in 1..K do
  for b in 1..K do
    for c in 1..K do
      ans = ans + [a,b,c].gcd
    end    
  end
end
puts ans
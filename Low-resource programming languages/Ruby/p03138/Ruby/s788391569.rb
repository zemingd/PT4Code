require 'set'
n,k=gets.chomp.split.map(&:to_i)
a=gets.chomp.split.map(&:to_i)
ans=[]
(k+1).times{|i|
ii=Array.new(n,i)
ans<< (Set.new(a) ^ Set.new(ii)).to_a.inject(:+)
}
p ans.max
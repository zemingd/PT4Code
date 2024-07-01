require 'set'
dp=Set.new [0]
gets.to_i.times do
  s=gets.to_i
  nex=dp.dup
  dp.each do |i|
    nex.add(i+s)
  end
  dp=nex
end
p dp.map{|i|i%10==0 ? 0 : i}.max

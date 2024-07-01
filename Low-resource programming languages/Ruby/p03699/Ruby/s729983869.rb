require 'set'
dp=Set.new [0]
gets.to_i.times do
  s=gets.to_i
  dp.dup.each do |i|
    dp.add(i+s)
  end
end
p dp.map{|i|i%10==0 ? 0 : i}.max

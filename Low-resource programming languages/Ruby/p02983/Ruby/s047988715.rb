:#!/usr/bin/ruby
#encoding: utf-8

#input
L,R = gets.split.map(&:to_i)
ans = 3000

L2 = L%2019
R2 = R%2019

if L2 <= R2
  (L2..R2).each do |i|
    (i+1..R2).each do |j|
      ans = [ans,(i*j)%2019].min
    end
  end
else
  (L2..R).each do |i|
    (i+1..R).each do |j|
      ans = [ans,(i*j)%2019].min
    end
  end
end

puts ans
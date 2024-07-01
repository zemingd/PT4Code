#!/usr/bin/ruby
#encoding: utf-8

#input
L,R = gets.split.map(&:to_i)
ans = 3000

if L <= 2019 and R >= 2019 then
  ans = 0
elsif L > 2019 then
  ans = ((L%2019)*(L%2019 + 1))%2019
elsif R < 2019 then
  (L..R).each do |i|
    (i+1..R).each do |j|
      ans = [ans,(i*j)%2019].min
    end
  end
end

puts ans
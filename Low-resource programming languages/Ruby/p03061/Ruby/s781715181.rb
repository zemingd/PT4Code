#!/usr/bin/env ruby

n = gets.chomp.to_i
ary = gets.chomp.split(' ').map(&:to_i)

right_gcd = [ary.first]
ary.slice(1..-1).each { |num| right_gcd << right_gcd.last.gcd(num) }

left_gcd = [ary.last]
ary.reverse.slice(1..-1).each { |num| left_gcd << left_gcd.last.gcd(num) }
left_gcd = left_gcd.reverse

ans = 0

0.step(n - 1) do |i|
  case i
  when 0           then left_gcd[i + 1]
  when 0...(n - 1) then right_gcd[i - 1].gcd(left_gcd[i + 1])
  when n - 1       then right_gcd[i - 1]
  end.tap { |gcd| ans = (gcd > ans ? gcd : ans) }
end

puts ans

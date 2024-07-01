require 'prime'

N = gets.to_i
H = Hash.new {|h, k| h[k] = []}
N.times do
  gets.to_i.prime_division.each do |n, m|
    H[n] << m
  end
end

ans = 1
H.each do |k, v|
  ans *= k ** v.max
end
puts ans
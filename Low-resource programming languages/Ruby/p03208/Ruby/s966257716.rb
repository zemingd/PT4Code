n, k = gets.split.map(&:to_i)
hs = Array.new(n) { gets.to_i }
# require 'tapp'
hs.sort!
min = 999999999
(n - k + 1).times do |i|
  # i.tapp
  v = hs[i + k - 1] - hs[i]
  min = [min, v].min
end
puts min
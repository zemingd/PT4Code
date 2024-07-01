N = gets.to_i
a = []
f = true

N.times do
  W = gets.chomp.to_s
  f = false if !a.empty? && (a.last[-1] != W[0] || a.include?(W))
  a << W
end

puts f ? 'Yes' : 'No'
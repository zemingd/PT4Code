n, k, q = gets.chop.split.map(&:to_i)
need = q - k + 1
if need <= 0
  n.times { puts 'Yes' }
  exit 0
end
s = []
n.times do
  a = gets.to_i
  s[a] = s[a].to_i + 1
end
(1..n).each do |i|
  puts s[i].to_i >= need ? 'Yes' : 'No'
end
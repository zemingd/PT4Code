n, m = gets.split.map(&:to_i)
a = Array.new(m){|i| i+1}
n.times do
  i = gets.split.map(&:to_i)
  i.delete_at(0)
  a = a & i
end
p a
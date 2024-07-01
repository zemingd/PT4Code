N = gets.chomp.to_i
a = []
N.times do
  ai = gets.chomp.to_i
  if a[ai]
    a[ai] = false
  else
    a[ai] = true
  end
end
p a.count {|i| i}
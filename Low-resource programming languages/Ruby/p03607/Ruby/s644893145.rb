N = gets.chomp.to_i
a = []
N.times do
  ai = gets.chomp.to_i
  if a[ai]
    a.delete_at ai
  else
    a[ai] = true
  end
end
p a.compact.length
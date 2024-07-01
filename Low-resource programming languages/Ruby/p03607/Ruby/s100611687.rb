N = gets.chomp.to_i
a = Hash.new(false)
N.times do
  ai = gets.chomp.to_i
  if a[ai]
    a.delete ai
  else
    a[ai] = true
  end
end

p a.length
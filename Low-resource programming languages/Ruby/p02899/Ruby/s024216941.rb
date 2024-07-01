n, k = gets.split.map(&:to_i)
h = gets.chomp.split(' ').map(&:to_i)

h.each do |i|
  print(h.index(i).to_i + 1)
  print(" ")
end

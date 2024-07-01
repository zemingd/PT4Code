H, W = gets.chomp.split.map(&:to_i)
grid = Array.new
H.times do
  line = gets.chomp
  if line.include?('#')
    grid.push(line)
  end
end
row = Array.new
(W - 1).downto(0) do |i|
  if grid.all? { |l| l[i] == '.' }
    row.push(i)
  end
end
grid.each do |l|
  row.each do |r|
    l[r] = ''
  end
end
puts grid

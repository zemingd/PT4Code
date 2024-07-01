s = gets().chomp().split()
h = s[0].to_i()
w = s[1].to_i()

field = Array.new(h+2)
field[0] = '.' * (w+2)
field[h+1] = '.' * (w+2)
h.times do |i|
  field[i+1] = '.' + gets().chomp() + '.'
end

(h+2).times do |i|
  (w+2).times do |j|
    if field[i][j] == '#' && field[i-1][j] != '#' && field[i+1][j] != '#' && field[i][j-1] != '#' && field[i][j+1] != '#' 
      puts('No')
      exit()
    end
  end
end

puts('Yes')
puts field

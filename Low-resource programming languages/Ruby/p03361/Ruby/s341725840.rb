bord = []

h, w = gets.chomp.split.map(&:to_i)
h.times do
  bord << gets.chomp.split('')
end

flag = true
h.times do |i|
  w.times do |j|
    if bord[i][j] == '#'
      f = false
      f = true if i - 1 >= 0 && bord[i-1][j] == '#'
      f = true if j + 1 < w && bord[i][j+1] == '#'
      f = true if i + 1 < h && bord[i+1][j] == '#'
      f = true if j - 1 >= 0 && bord[i][j-1] == '#'
      flag = flag && f
    end
  end
end

puts flag ? 'Yes' : 'No'
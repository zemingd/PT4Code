h = Hash.new
a = Array.new(3).map { Array.new(3){0} }

def fin
  puts 'Yes'
  exit
end

3.times do |i|
  gets.strip.split.each_with_index do |c, j|
    h[c] = [i, j]
  end
end

N = gets.strip.to_i

N.times do
  b = gets.strip
  if h.has_key?(b)
    x, y = h[b]
    a[x][y] = 1
  end
end

# 横
fin if a.map { |ah| ah.inject(:+) }.select { |n| n.eql?(3) }.size > 0 

# 縦
fin if a.transpose.map { |av| av.inject(:+) }.select { |n| n.eql?(3) }.size > 0

# 斜め
fin if (a[0][0] + a[1][1] + a[2][2]).eql?(3)
fin if (a[2][0] + a[1][1] + a[0][2]).eql?(3)

puts 'No'

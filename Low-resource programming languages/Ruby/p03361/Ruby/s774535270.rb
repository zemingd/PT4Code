h, w = gets.chomp.split(' ').map(&:to_i)
s = []
h.times { s << gets.chomp.each_char.to_a }

def search(i, j, h, w, s)
  direction = [ [1, 0], [0, 1], [0, -1], [-1, 0] ]
  direction.any? do |d|
    (0...h).cover?(i + d[0]) &&
        (0...w).cover?(j + d[1]) &&
        s[i + d[0]][j + d[1]] == '#'
  end
end

0.upto(h-1) do |i|
  0.upto(w-1) do |j|
    next unless s[i][j] == '#'
    unless search(i, j, h, w, s)
      puts 'No'
      exit
    end
  end
end

puts 'Yes'

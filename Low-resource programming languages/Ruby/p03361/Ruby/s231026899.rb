h, w = gets.split.map(&:to_i)

lines = []
h.times do
  line = gets.chomp
  lines << line
end

dim = [[0, 1], [1, 0], [0, -1], [-1, 0]]

lines.each_with_index do |l, i|
  0.upto(w-1) do |j|
    next if l[j] == '.'
    flag = false

    dim.each do |pos|
      dx = j + pos[0]
      dy = i + pos[1]
      next if (dx >= w || dy >= h) || (dx < 0 || dy < 0)
      flag = true if lines[dy][dx] == '#'
      break if flag
    end

    unless flag
      puts 'No'
      exit
    end

  end
end

puts 'Yes'

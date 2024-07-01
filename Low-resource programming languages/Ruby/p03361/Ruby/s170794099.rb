_, *canvas = readlines.map(&:chomp)
result = true
catch(:foo) do
  canvas.each_with_index do |l, i|
    l.each_char.with_index do |c, j|
      next if c == '.'
      left = j > 0 ? l[j - 1] : nil
      right = l[j + 1]
      up = i > 0 ? canvas[i - 1][j] : nil
      down = canvas[i + 1] ? canvas[i + 1][j] : nil
      if left != '#' && right != '#' && up != '#' && down != '#'
        result = false
        throw :foo
      end
    end
  end
end
puts result ? 'Yes' : 'No'
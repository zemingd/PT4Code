h, w = gets.split.map(&:to_i)
map = []
h.times do
  map << gets.chomp.chars
end

h.times do |i|
  w.times do |j|
    if map[i][j] == '#'
      if i > 0 && map[i-1][j] =~ /[#x]/
          map[i][j] = 'x'
      elsif  i < h-1 && map[i+1][j] =~ /[#x]/
          map[i][j] = 'x'
      elsif  j > 0 && map[i][j-1] =~ /[#x]/
          map[i][j] = 'x'
      elsif  j < w-1 && map[i][j+1] =~ /[#x]/
          map[i][j] = 'x'
      else
        puts 'No'
        exit
      end
    else
      next
    end
  end
end
puts 'Yes'
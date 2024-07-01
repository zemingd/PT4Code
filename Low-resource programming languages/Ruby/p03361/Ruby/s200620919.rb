h,w=gets.split.map(&:to_i)
field=readlines

0.upto(h-1) do |i|
  0.upto(w-1) do |j|
    next if field[j][i] == '.'

    b = (0 <= j-1 && field[j-1][i] == '#') ||
      (j+1 < w  && field[j+1][i] == '#') ||
      (0 <= i-1 && field[j][i-1] == '#') ||
      (i+1 < h  && field[j][i+1] == '#')

    unless b
      puts 'No'
      exit 0
    end
  end
end

puts 'Yes'
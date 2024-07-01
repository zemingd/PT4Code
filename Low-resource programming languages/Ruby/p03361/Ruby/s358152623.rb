h,w=gets.split.map(&:to_i)
field=readlines
field[-1] << '.'
field << '.' * (w+1)

0.upto(h-1) do |j|
  0.upto(w-1) do |i|
    next if field[j][i] == '.'
    
    ok = [
      field[j-1][i],
      field[j+1][i],
      field[j][i-1],
      field[j][i+1],
    ].any? {|b| b == '#'}

    unless ok
      puts 'No'
      exit 0
    end
  end
end

puts 'Yes'
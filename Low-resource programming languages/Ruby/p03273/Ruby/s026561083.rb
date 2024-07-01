H, W = gets.split.map(&:to_i)

field = []

H.times do
  field << gets.chomp.chars
end

loop do
  update = false

  temp = []

  field.each do |row|
    if !row.all?('.')
      temp << row
    else
      update = true
    end
  end

  remove_list = []

  temp.transpose.each_with_index do |col, index|
    if col.all?('.')
      remove_list << index
      update = true
    end
  end

  field = temp.map do |row|
    r = []

    row.each_with_index do |a, i|
      next if remove_list.include?(i)

      r << a
    end

    r
  end

  break unless update
end

puts field.map(&:join)

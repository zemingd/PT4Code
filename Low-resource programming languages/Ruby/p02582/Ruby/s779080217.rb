S = gets.chomp!
count = 0
S.each_char.with_index do |c, i|
  if c == 'R'
    count = 1 if count.zero?
      temp_count = 1
      while S[i+1] == 'R'
        temp_count += 1
        i += 1
      end

    if count < temp_count
      count = temp_count
    end
  end
end

puts count

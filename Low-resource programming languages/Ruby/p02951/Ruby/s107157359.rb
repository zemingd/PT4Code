n = gets.to_i
h = gets.split.map(&:to_i)
flag = -1

h.each_with_index do |h_i, index|
  i = index + 1
  if index < n
    x = h_i - h[i]

    if x > 1
      puts 'No'
      exit
    elsif x == 1 || x == 0
      if flag == index
        puts 'No'
        exit
      end
      
      h_i = h_i - 1
      flag = i
    end
  end
end

puts 'Yes'

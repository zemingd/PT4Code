str = gets.chomp

flag = false
ca = str.chars

ca.each_with_index do |c, i|
  if c == 'h'
    if ca[i + 1] == 'i'
      if ca[i + 2] && (ca[i + 2] != 'i')
        flag = true
        break
      end
    end
  end
end

if flag
  print('Yes')
else
  print('No')
end
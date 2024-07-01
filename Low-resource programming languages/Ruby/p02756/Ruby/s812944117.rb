str = gets.chomp
q = gets.chomp.to_i
reverse = false
(1..q).each do 
  qs = gets.chomp.split(" ")
  if qs[0] == '1'
    reverse = !reverse
  elsif qs[0] == '2'
    if (qs[1] == '1' && !reverse) || (qs[2] == '2' && reverse)
      str = qs[2] + str
    elsif 
      str = str + qs[2]
    end
  end
end
str.reverse! if reverse
print(str)
str = gets.chomp
q = gets.chomp.to_i
(1..q).each do 
  qs = gets.chomp.split(" ")
  if qs[0] == '1'
    str.reverse!
  elsif qs[0] == '2'
    if qs[1] == '1' 
      str = qs[2] + str
    elsif qs[1] == '2'
      str = str + qs[2]
    end
  end
end
print(str)
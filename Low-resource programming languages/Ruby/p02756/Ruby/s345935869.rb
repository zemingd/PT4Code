str = gets.chomp
q = gets.chomp.to_i
arr = []
(1..q).each do 
  arr << gets.chomp.split(" ")
end

reverse = false
str_arr = [str]
arr.each do |row|
  if row[0] == '1'
    reverse = !reverse
  elsif row[0] == '2'
    push = false
    if row[1] == '1'
      push = true if reverse
    end
    if row[1] == '2'
      push = true
      push = false if reverse
    end
    if push
      str_arr.push(row[2])
    else
      str_arr.unshift(row[2])
    end
  end
end

str_arr.reverse! if reverse
print(str_arr.join)
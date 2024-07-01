str = gets.chomp.to_s
n_length = str.length

str_list = str.split("")
#p str_list

if str_list.size == 1
  print("0\n")
  exit
end

str_list.each_with_index do |cube,num|

  if cube == str_list[num+1]
    str_list.delete_at(num)
    str_list.delete_at(num+1)
  end
end

cube_max = n_length - str_list.length
puts cube_max 
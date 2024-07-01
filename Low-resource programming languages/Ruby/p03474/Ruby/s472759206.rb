A,B = gets.split("\s").map {|s|s.to_i}
S = gets.chomp
s_list = S.split("-")
if s_list.size != 2 then
  puts "No"
else
  #p s_list
  if s_list[0].size==A && s_list[1].size==B then
    puts "Yes"
  else
    puts "No"
  end
end

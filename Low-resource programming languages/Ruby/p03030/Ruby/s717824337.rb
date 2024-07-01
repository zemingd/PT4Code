n = gets.to_i
shop_list = readlines.map.with_index { |line,i| [line.split(' ')[0],line.split(' ')[1].to_i,i + 1] }
name_list = shop_list.map{|shop| shop[0]}.sort!{|a,b| a <=> b}.uniq
name_list.each do |name|
  shop_list.select{|shop| shop[0] == name}.sort_by{|shop| shop[1]}.reverse.each do |shop|
    puts shop[2]
  end
end
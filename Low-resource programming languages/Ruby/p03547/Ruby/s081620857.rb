puts Proc.new{|x,y| if x-y > 0 then ">" elsif x-y == 0 then "=" else "<" end}.call(gets.chomp.split.map{|s| s.to_i(16)})

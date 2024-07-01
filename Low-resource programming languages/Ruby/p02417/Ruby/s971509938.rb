msg=""
while s=gets
  msg+=s
end
("a".."z").each{|c| puts"#{c} : #{msg.downcase.count(c)}"}
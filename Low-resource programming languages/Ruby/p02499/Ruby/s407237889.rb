def input
  str = ""
  tmp = ""
  while (tmp = gets) != nil 
  str += tmp
  end
  return str.downcase
end

lambda{ |s| ("a".."z").each{
  |c| puts  "#{c}: #{s.count(c)}"
  }
}.call input
line = gets
 
string_size = line.size
loop{
  line.gsub(/(dream|dreamer|erase|eraser)$/,"")
  if string_size == line.size
    print "NO"
    exit
  else if 0 == line.size
    print "YES"
    exit
  end
  string_size = line.size
}
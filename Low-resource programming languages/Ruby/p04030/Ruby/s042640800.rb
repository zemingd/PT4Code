s = gets.chomp.split("")
ret = []
s.each do |x|
  case x
  when '0'
    ret << "0"
  when '1'
    ret << "1"
  else
    ret.pop if !(ret.empty?)
  end
end
puts ret.join("")
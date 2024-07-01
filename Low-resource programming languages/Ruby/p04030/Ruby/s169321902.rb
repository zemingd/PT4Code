str=gets.chomp
ret=''
str.each_char{|c|
  case c
    when '0','1' then
      ret+=c
    when 'B' then
      ret.chop!
  end
}
puts ret
loop{
  i = gets.chop
  break if i = '0'
  i.each_chr.inject :+
}
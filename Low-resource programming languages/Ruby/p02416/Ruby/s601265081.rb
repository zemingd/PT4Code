loop{
  i = gets.chop
  break if i == '0'
  puts i.each_char.map(&:to_i).inject :+
}
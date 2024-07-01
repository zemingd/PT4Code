count = gets().chomp().to_i
str = gets().chomp()

str.each_char{|ch|
  num = (ch[0].ord + count)
  if num > 90 then 
    num = num - 26
  end
  print num.chr
}
print "\n"
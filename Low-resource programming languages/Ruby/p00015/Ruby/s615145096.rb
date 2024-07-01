n=gets.to_i
n.times{
  a=gets.to_i
  b=gets.to_i
  c=(a+b).to_s
  if c.size<80
    puts c
  else
    puts "overflow"
  end
}
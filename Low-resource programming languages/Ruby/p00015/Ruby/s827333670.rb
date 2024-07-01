n=gets.to_i
n.times{
  a=gets.to_i
  b=gets.to_i
  if a+b<1e80
    puts a+b
  else
    puts "overflow"
  end
}
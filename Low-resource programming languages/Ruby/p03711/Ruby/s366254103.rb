a,b = gets.split.map(&:to_i)
m = []
a.times{|i|
  m[i] = gets.chomp  
}
puts "#"*(b+2)
a.times{
  |i|
  puts "#"+m[i]+"#"
}
puts "#"*(b+2)

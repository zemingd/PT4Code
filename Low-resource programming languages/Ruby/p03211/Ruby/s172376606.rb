s=gets.chomp
min=0
(s.size-2).times{|i|
  diff=(753-s[i..i+2].to_i).abs
  if i==0||diff<min then min=diff end
}
puts min

n = gets.to_i
s = gets.to_s.chomp
arr = s.chars

arr.each{|v|
  n.times do
    v = v.succ
    if(v == 'AA') then v = 'A' end
  end
  printf("%s", v)
}
puts
while line = gets do
  s = line.chomp
  if s=="0"
    break
  end
  s = s.split("").map{|x| x.to_i}
  printf("%d\n",s.inject(:+))
end

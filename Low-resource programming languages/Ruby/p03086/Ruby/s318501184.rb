a=gets.chomp.split("")
max=0
count=0
a.each_with_index{|i,j|
  if i=='A' || i=='T'|| i=='G' || i=='C'
    count+=1
    max = count if max<count
  else
    count=0
  end
}
puts max

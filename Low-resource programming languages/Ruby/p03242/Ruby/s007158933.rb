a=gets.chomp
for i in 0..2
  a[i]= a[i]=='1' ? '9' : '1'
end
puts a
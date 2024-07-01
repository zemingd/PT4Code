n=gets.to_i
arr=gets.split.map(&:to_i).reverse
for i in 0..9
  if i <= 8
    print arr[i].to_s+" "
  else
    print arr[i].to_s+"\n"
  end
end
str = gets.chomp
q = gets.chomp.to_i
arr = [str]
(1..q).each do 
  qs = gets.chomp.split(" ")
  if qs[0] == '1'
    arr.reverse!
  else
    if qs[1] == '1' 
      arr.unshift(qs[2])
    else
      arr.push(qs[2])
    end
  end
end
print(arr.join)
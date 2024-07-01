n = gets.to_i
P_arr = gets.split.map(&:to_i)
counter = 0

n.times do |i1|
  if i1 == 0
    counter += 1
  else
     P_arr[0..i1].each do |v|
       if (P_arr[i1] >= v) == false
         next
       elsif P_arr[i1] == P_arr[0..i1].min
         counter += 1
       end
     end
  end
end

p counter

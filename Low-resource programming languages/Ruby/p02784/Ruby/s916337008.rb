input1 = gets
H,N = input1.split(" ").map{|l| l.to_i}

A = gets
A_list = A.split(" ").map{|l| l.to_i}

if A_list.sum() >= H
  puts "Yes"
else
  puts "No"
end
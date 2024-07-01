H = gets.chomp.to_i

d = (0..40).to_a.bsearch{|v| 2**v >= H}

if H == 1
  puts 1
  exit
end
ans = 3
if 2**d == H
  (d-1).times { ans = ans * 2 + 1}
else
  (d-2).times { ans = ans * 2 + 1}
end
puts ans

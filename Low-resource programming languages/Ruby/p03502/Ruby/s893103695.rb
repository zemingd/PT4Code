n=gets.chomp.to_i

def sum_number(s)
  s=s.to_s
  leng = s.length
  sum = 0

  for i in 0..leng-1 do
    sum += s[i].to_i
  end
  return sum
end

if n%sum_number(n) == 0
  puts "Yes"
else
  puts "No"
end

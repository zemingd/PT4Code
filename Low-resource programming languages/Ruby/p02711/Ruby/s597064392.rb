n = gets.to_i

n1 = n % 10
n2 = ((n - n1) / 10) % 10
n3 = (n - n1 - n2 * 10) / 100

answer = 0

if n1 == 7 then
  answer = answer + 1
end
if n2 == 7 then
  answer = answer + 1
end
if n3 == 7 then
  answer = answer + 1
end
  
if answer == 0
  print "No"
else
  print "Yes"
end
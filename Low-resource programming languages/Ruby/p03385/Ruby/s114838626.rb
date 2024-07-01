arr = $stdin.gets.chomp.split("")
 
a = 0
b = 0
c = 0

for i in 0..2
  if arr[i] == "a"
    a += 1
  elsif
    arr[i] == "b"
    b += 1
  elsif
    arr[i] == "c"
    c += 1
  end
end
 
if a == 1 and b == 1 and c == 1
  puts "Yes"
else
  puts "No"
end
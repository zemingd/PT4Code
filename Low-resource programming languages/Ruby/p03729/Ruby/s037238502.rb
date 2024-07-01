arr = $stdin.gets.chomp.split(" ")

a = arr[0]
b = arr[1]
c = arr[2]

if a[-1] == b[0] and b[-1] == c[0]
  puts "YES"
else
  puts "NO"
end
n = gets.to_i
s = gets.split(" ").map(&:to_i)
s.sort!

fir = []
sec = []

for i in 0..(n/2 -1) do
  fir << s[i]
  sec << s[i+(n/2)]
end

if fir[(n/2)-1] == sec[0]
  puts "0"
else
  nums = [*(fir[(n/2)-1]+1..sec[0])] 
  puts nums.size
end
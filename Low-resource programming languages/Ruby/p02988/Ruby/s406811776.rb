n = gets.to_i
s = gets.split(" ").map(&:to_i)
count = 0

for i in 1..(n-2) do
  if s[i-1] < s[i] and s[i] < s[i+1]
    count += 1
  elsif s[i-1] > s[i] and s[i] > s[i+1]
    count += 1
  end
end    
puts count
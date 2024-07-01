s = gets.split("").map { |e| e.to_i }
k = gets.to_i

for i in 0..k-1 do
  if s[i] != 1
    puts s[i]
    break
  end
end
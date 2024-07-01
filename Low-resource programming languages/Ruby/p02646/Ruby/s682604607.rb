A = gets.chomp.split " "
B = gets.chomp.split " "
a,v = A[0].to_i, A[1].to_i
b,w = B[0].to_i, B[1].to_i
RESULT = gets.chomp.to_i

time = 1

while true
  now = (b + w*time) - (a + v*time)
  if now <= 0
    puts "Yes"
    return;
  end
  if time > RESULT
    puts "No"
    return
  end
  time += 1;
end
# 酔いはコーディングに悪影響あり
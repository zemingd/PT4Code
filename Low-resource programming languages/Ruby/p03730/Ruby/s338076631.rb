A, B, C = gets.split(' ').map(&:to_i)

a = 0
ans = "NO"
B.times do 
  if a%B == C
    ans = "YES"
    break
  end
  a += A
end

p ans
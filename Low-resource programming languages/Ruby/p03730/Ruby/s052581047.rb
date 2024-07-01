A = gets.to_i
B = gets.to_i
C = gets.to_i

1.step(100,A) do |i|
 if A*i%B==C
  puts "YES"
  break
 else
  puts "NO"
 end
end
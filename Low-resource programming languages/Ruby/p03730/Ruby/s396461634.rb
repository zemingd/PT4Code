A,B,C = gets.split.map(&:to_i)

a = 0
while a <= 2000
  a += A
  if a % B == C
    puts 'YES'
    exit
  end
end
puts 'NO'
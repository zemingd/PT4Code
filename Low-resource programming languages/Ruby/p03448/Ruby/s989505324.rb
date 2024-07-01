A = gets.to_i
B = gets.to_i
C = gets.to_i
x = gets.to_i
n = 0

if x % 50 != 0
  puts "x must be a multiple of 50."
  exit
end

for a in 0..A # 500円の枚数
  for b in 0..B # 100円の枚数
    for c in 0..C # 50円の枚数
      if (500*a + 100*b + 50*c) == x
        n+=1
        break
      end
    end
  end
end

puts n
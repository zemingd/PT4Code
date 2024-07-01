n = gets.chomp.to_i
ary = gets.chomp.split(' ').map(&:to_i)

ans = 0

ary.each do |num|
  while num % 2 == 0
    ans += 1
    num /= 2
  end
end

p ans

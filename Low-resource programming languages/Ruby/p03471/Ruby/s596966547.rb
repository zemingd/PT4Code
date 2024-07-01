n, y = gets.chomp.split(" ").map(&:to_i)
y /= 1000
judge = false
sum = 0
num1000 = 0
0.upto(n) do |num10000|
  0.upto(n - num10000) do |num5000|
    num1000 = n - num10000 - num5000
    sum = num10000 * 10 + num5000 * 5 + num1000
    if sum == y
      puts "#{num10000} #{num5000} #{num1000}"
      judge = true
      break
    end
  end
  if judge == true
    break
  end
end
if judge == false
  puts "-1 -1 -1"
end
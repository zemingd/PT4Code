n, y = gets.chomp.split(" ").map(&:to_i)
y /= 1000
judge = false
0.upto(n) do |num10000|
  0.upto(n - num10000) do |num5000|
    0.upto(n - num10000 - num5000) do |num1000|
      if num10000 * 10 + num5000 * 5 + num1000 == y && (num10000 + num5000 + num1000) == n
        puts "#{num10000} #{num5000} #{num1000}"
        judge = true
        break
      end
    end
    if judge == true
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
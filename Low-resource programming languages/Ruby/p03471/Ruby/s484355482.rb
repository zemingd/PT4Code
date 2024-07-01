# 入力を受け取る
n,y = gets.chomp.split.map(&:to_i)

for i in 0..n do
  for j in 0..(n-i) do
    sum = 10000*i+5000*j+1000*(n-i-j)
    if sum == y
      puts "#{i} #{j} #{n-i-j}"
      flag = true
      break
    end
  end
  break if flag
end
puts "-1 -1 -1" if !(flag)

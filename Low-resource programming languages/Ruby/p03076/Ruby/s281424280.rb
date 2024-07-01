# N, M = gets.chomp.split.map(&:to_i)
# S = gets.chomp.chars
# T = gets.chomp.chars

A = gets.chomp.to_i
B = gets.chomp.to_i
C = gets.chomp.to_i
D = gets.chomp.to_i
E = gets.chomp.to_i

# 10で割った余りが 1 以上で一番小さいものを最後に注文
arr = [A, B, C, D, E]
largest = 0
last_i = 0
0.upto(4).each do |i|
  remain = 10 - (arr[i] % 10)
  if remain == 10 # 0 should be skipped
    next
  end
  # p "remain of #{i}: #{remain}"
  if remain > largest
    largest = remain
    last_i = i
  end
end
# p "last_i: #{last_i}"

ans = 0
0.upto(4).each do |i|
  if i == last_i
    # For Debug
    # p "#{i}: #{arr[i]}"
    ans += arr[i]
  else
    # For Debug
    # p "#{i}: #{(arr[i] + 9) / 10 * 10}"
    ans += (arr[i] + 9) / 10 * 10
  end
end

p ans
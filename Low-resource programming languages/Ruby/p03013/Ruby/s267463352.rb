n, m = gets.split(" ").map(&:to_i)
brokens = []
m.times do
  brokens.push(gets.to_i)
end

memo = []
memo.push(1) #0マス先
memo.push(1) #1マス先
n.times do |index| #2マス先以降
  memo.push(memo[index] + memo[index + 1])
end

now = 0
multipliers = []
brokens.each do |broken|
  if now == broken
    puts 0
    exit
  end
  multipliers.push(memo[(broken - 1) - now])
  now = broken + 1
end

multipliers.push(memo[n - now])

answer = 1
multipliers.each do |multiplier|
  answer *= multiplier
end

puts answer % 1_000_000_007
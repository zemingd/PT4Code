n = gets.to_i
boss_num = gets.split(" ").map(&:to_i)
i = 0
while i <= n-1
  ctn = 0
  boss_num.each do |n|
    if i+1 == n
      ctn += 1
    end
  end
  puts ctn
  i += 1
end
# 5000兆 = 5 * 10 ** 15
LONGDAYS = 5 * 10 ** 15
S = gets.chomp.split("").map(&:to_i)
K = gets.to_i
count = 0
flag = false
S.each do |num|
  if num == 1
    count += 1
    if count >= K
      puts num
      break
    end
  else
    current = 1
    LONGDAYS.times do
      current *= num
      if count + current >= K
        flag = true
        puts num
        break
      end
    end
    count += current
  end
  break if flag
end

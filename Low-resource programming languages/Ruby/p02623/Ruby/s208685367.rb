def main
  n,m,k = gets.chomp.split(" ").map(&:to_i)
  as = gets.chomp.split(" ").map(&:to_i)
  bs = gets.chomp.split(" ").map(&:to_i)

  time = 0
  cnt = 0
  loop do
    if as.size == 0 && bs.size == 0
      break
    elsif as.size == 0
      time += bs.delete_at(0)
    elsif bs.size == 0 || as[0] <= bs[0]
      time += as.delete_at(0)
    else
      time += bs.delete_at(0)
    end
    if time <= k
      cnt += 1
    else
      break
    end
  end
  puts cnt
end

main


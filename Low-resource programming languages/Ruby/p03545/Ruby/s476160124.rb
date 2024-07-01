a, *bcd = gets.chomp.split("").map(&:to_i)

(1 << 3).times do |bit|
  ans = [a]
  sum = a

  bcd.each_with_index do |n, i|
    ans << (bit[i] == 0 ? "+" : "-") << n
    sum += (-1) ** bit[i] * n
  end

  if sum == 7
    puts [*ans, "=7"].join
    break
  end
end

abcd = gets.split("").map(&:to_i)

(1 << 3).times do |bit|
  ans = []

  sum = abcd[0]
  ans << abcd[0]

  3.times do |i|
    sum += (-1) ** bit[i] * abcd[i + 1]
    ans << (bit[i] == 0 ? "+" : "-") << abcd[i + 1]
  end

  if sum == 7
    puts "#{ans.join}=7"
    break
  end
end

n, m = gets.chomp.split(" ").map(&:to_i)
a = {}
1.upto(m) do |i|
  idx = gets.chomp.to_i
  a[idx] = true
end

cnt = {}
cnt[-1] = 0
cnt[0] = 1
1.upto(n) do |i|
  if a[i]
    cnt[i] = 0
  else
    cnt[i] = cnt[i - 1] + cnt[i - 2]
    if cnt[i].zero?
      puts 0
      exit
    end
  end
end
puts cnt[n] % 1_000_000_007

n = gets.to_i
a = gets.chomp.split.map(&:to_i).sort!

hs = Hash.new(0)
dp = Array.new(a[-1] + 1, true)

0.step(n - 1) do |i|
  hs[a[i]] += 1
  1.step(a[-1] / a[i]) do |c|
    if c == 1
      if !dp[c * a[i]]
        break
      else
        next
      end
    end
      
    dp[c * a[i]] = false
  end
end

puts a.count {|x| dp[x] && hs[x] <= 1 }
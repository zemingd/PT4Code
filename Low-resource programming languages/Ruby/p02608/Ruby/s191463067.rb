require 'set'; require 'prime'; require 'pp'
INF=Float::INFINITY; MOD=10**9+7
n = gets.chomp.to_i

ans = Array.new(n+1, 0)
1.upto(100) do |i|
  num = i*i
  1.upto(100) do |j|
    num2 = num + j*j + i * j
    # break if num2 > n
    1.upto(100) do |k|
      num3 = num2 + k*k + i*k + j*k
      if num3 > n
        break
      else
        ans[num3] += 1
      end
    end
  end
end

ans.shift
ans.each do |e|
  puts e
end

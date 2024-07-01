N, K = gets.chomp.split(" ").map(&:to_i);

def coins(k, i)
  ((Math.log10(k) - Math.log10(i)) / Math.log10(2)).ceil
end

coincnt = Array.new(coins(K, 1) + 1, 0)
dicemax, nocoin = N < K ? [N, 0]: [K - 1, N - K + 1]

(1..dicemax).each{|i|
  coincnt[coins(K, i)] += 1
}
ans = 0.0
coincnt.each_with_index{|i, idx|
  ans += i * 0.5 ** idx
}
ans = (ans + nocoin) / N.to_f

printf("#{ans}")

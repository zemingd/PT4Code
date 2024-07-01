X, K, D = gets.split.map(&:to_i)

x = X.abs
k, m = x.divmod(D)

if m == 0
  if k <= K
    if (K - k) % 2 == 0
      puts 0
    else
      puts D
    end
  else
    puts x - K * D
  end
else
  if k < K
    if (K - k) % 2 == 0
      puts x - k * D
    else
      puts (x - (k + 1) * D).abs
    end
  else
    puts x - K * D
  end
end

K, A, B = $stdin.read.split(/\n| /).map(&:to_i)

if B - A >= K
  puts "OK"
else
  a = A%K
  b = B%K

  if a == 0 || b == 0
    puts "OK"
  else
    if (B/K)-(A/K) >= 1
      puts "OK"
    else
      puts "NG"
    end
  end
end
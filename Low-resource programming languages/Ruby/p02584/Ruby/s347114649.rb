X, K, D = gets.split.map(&:to_i)


tikadukerukaisuu = (X / D).abs
if K <= tikadukerukaisuu
  if X.positive?
    puts X - D * K
    exit
  else
    puts X + D * K
    exit
  end
end

nokorinokaisuu = K - tikadukerukaisuu
amari = X % D

if nokorinokaisuu.even?
  puts amari
  exit
end

if nokorinokaisuu.odd?
  puts (amari - D).abs
  exit
end

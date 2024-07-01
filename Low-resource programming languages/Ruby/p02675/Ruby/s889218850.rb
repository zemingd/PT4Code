N = gets.to_i

if N < 10
  if N == 2 || N == 4 || N == 5 || N == 7 || N == 9
    puts {N "hon"}
  elsif N == 0 || N == 1 || N == 6 || N == 8
    puts {N "pon"}
  elsif N == 3
    print {"#{N}bon"}
  end
end
  
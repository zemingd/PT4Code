N = gets.to_i

if N < 10
  if N == 2 || N == 4 || N == 5 || N == 7 || N == 9
    print("#{N}hon")
  elsif N == 0 || N == 1 || N == 6 || N == 8
    print("#{N}pon")
  elsif N == 3
    print("#{N}bon")
  end
elsif N >= 10 && N <= 99
  nn = N % 10
  if nn == 2 || nn == 4 || nn == 5 || nn == 7 || nn == 9
    print("#{N}hon")
  elsif nn == 0 || nn == 1 || nn == 6 || nn == 8
    print("#{N}pon")
  elsif nn == 3
    print("#{N}bon")
  end
elsif N >= 100 && N <= 999
  nnn = N % 100 % 10
  if nnn == 2 || nnn == 4 || nnn == 5 || nnn == 7 || nnn == 9
    print("#{N}hon")
  elsif nnn == 0 || nnn == 1 || nnn == 6 || nnn == 8
    print("#{N}pon")
  elsif nnn == 3
    print("#{N}bon")
  end
end
  
# frozen_string_literal: true
n = gets.to_i

def keisan(n)
  all = (1..n).inject(:+)

  while n > 0
    wari = (n / 2) + 1
    honto = n % wari
    all = honto + all - n
    n = wari - 1
  end

  all
end

if n == 2
  p 1
elsif n == 1
  p 0
else
  p keisan(n)
end


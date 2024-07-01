S = gets.chomp
K = gets.to_i
N = S.size

list = S.chars

i = 0
k = K

class String
  def next_alpha(n)
    b = self.ord - 97
    (97 + (n + b) % 26).chr
  end
end

while k > 0 && i < N
  s = list[i]

  if i < N - 1 && s == 'a'
    i += 1
    next
  end

  d = 26 - (s.ord - 97)

  if i == N - 1
    k %= 26
    list[i] = s.next_alpha(k)
  elsif d <= k
    k -= d
    list[i] = 'a'
  end

  i += 1
end

puts list.join

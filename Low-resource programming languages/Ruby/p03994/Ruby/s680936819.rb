S = gets.chomp
K = gets.to_i
N = S.size

list = S.chars

i = 0
k = K

while k > 0 && i < N
  s = list[i]

  if i < N - 1 && s == 'a'
    i += 1
    next
  end

  d = 26 - (s.ord - 97)

  if i == N - 1
    k %= 26
    k.times do
      if s == 'z'
        s = 'a'
      else
        s = s.next
      end
    end
    list[i] = s
  elsif d <= k
    k -= d
    list[i] = 'a'
  end

  i += 1
end

puts list.join

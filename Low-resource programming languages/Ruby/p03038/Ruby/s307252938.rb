# Integer Cards

cards = []
rewrite_source = []

N, M = gets.chomp.split(" ").map(&:to_i)

cards = gets.chomp.split(" ").map(&:to_i)

for i in 0...M do
  bnum, cnum = gets.chomp.split(" ").map(&:to_i)
  rewrite_source[i] = [bnum, cnum]
end

cards.sort!

rewrite_source.sort_by!{|a| a[1]}.reverse!

check = 0

j = 0
i = 0

while i < M
#for i in 0...M
  if j > rewrite_source[i][0] + check then
    while j < N
      if cards[j] <= rewrite_source[i][1] then
        cards[j] = rewrite_source[i][1]
      else
        break
      end
      j += 1
    end
  else
    while j < rewrite_source[i][0] + check
      if cards[j] <= rewrite_source[i][1] then
        cards[j] = rewrite_source[i][1]
      else
        break
      end
      j += 1
    end
  end
  check = j
  i += 1
end

answer = 0

cards.each{|a|
  answer += a
}

puts answer

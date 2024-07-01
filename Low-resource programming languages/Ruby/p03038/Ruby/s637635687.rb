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

for i in 0...M
  if rewrite_source[i][0] + check > N then
    chekc -= rewrite_source[i][0] + check - N
  end
  while j < rewrite_source[i][0] + check
    if cards[j] <= rewrite_source[i][1] then
      cards[j] = rewrite_source[i][1]
    else
      break
    end
    j += 1
  end
  check = j
end

answer = 0

cards.each{|a|
  answer += a
}

puts answer

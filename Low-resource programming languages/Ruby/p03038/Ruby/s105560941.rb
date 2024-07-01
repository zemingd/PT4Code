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


i = 0
j = 0

check = 0

while i < M

  while j < N
    if j >= rewrite_source[i][0] + check then
      break
    elsif cards[j] <= rewrite_source[i][1] then
      cards[j] = rewrite_source[i][1]
      j += 1
    else
      break
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

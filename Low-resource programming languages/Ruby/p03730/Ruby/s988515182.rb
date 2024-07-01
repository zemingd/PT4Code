a, b, c = gets.split(' ').map!(&:to_i)

exist = Hash.new(false)

ans = 'No'

times = 1
loop do
  r = (a * times) % b
  if r == c
    ans = 'Yes'
    break
  end

  break if exist[r] # すでに存在している余りだった場合は、これ以降は出現しない

  exist[r] = true
  times += 1
end

puts ans

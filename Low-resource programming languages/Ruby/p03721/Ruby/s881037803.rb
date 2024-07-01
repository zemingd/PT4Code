N, K = gets.split.map(&:to_i)
ary = []
N.times do
  ary << gets.split.map(&:to_i)
end
ary.sort! { |(a1,b1), (a2,b2)| a1<=>a2 }
cnt = 0
while true do
  ab = ary.shift
  cnt += ab[1]
  if cnt >= K
    puts ab[0]
    exit
  end
end  
inp = gets.split.map!(&:to_i)
apple = []  #美味しさの配列
apple_abs = []  #美味しさの絶対値の配列
inp[0].times do |i|
  apple << inp[1]+(i+1)-1  #インデックスとりんごの番号は１ズレてる
end
apple_abs = apple.map(&:abs).sort!  #これの0番目が食うやつ

ans = 0
apple.each do |v|
  ans += v if v != apple_abs[0]
end
puts ans

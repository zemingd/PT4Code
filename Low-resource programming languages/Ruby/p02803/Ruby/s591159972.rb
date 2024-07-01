H, W = gets.chomp.split(" ").map(&:to_i)
S = []
H.times{
  S << gets.chomp
}

sh, sw = [-1, -1]
H.times{|h|
  s = S[h]
  W.times{|w|
    if s[w] == '.' then
      sh, sw = [h, w]
      break
    end
  }
  break if sh > -1
}

Trace = [[sh, sw]]
bef = [[sh+1, sw, 0], [sh, sw+1, 1]]
stp = 1
stps = [0, 0]
poses = [[0, 0], [0, 0]]
while not bef.empty? do
  nxt = []
  bef.each{|h, w, d|
    if S[h][w] == '#' then
    else
      Trace << [h, w]
      stps[d] = stp
      poses[d] = [h, w]
      nxt << [h+1, w, d] if (not Trace.include?([h+1, w])) && h+1 < H
      nxt << [h-1, w, d] if (not Trace.include?([h-1, w])) && h   > 0
      nxt << [h, w+1, d] if (not Trace.include?([h, w+1])) && w+1 < W
      nxt << [h, w-1, d] if (not Trace.include?([h, w-1])) && w   > 0
    end
  }
  bef = nxt.uniq
  stp += 1
end

if poses[0] == poses[1] then
  puts stps[0]
else
  puts stps[0] + stps[1]
end

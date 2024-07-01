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

def breadth_first_search(f)
  trace = [f]
  bef = [f]
  stp = 0
  lststp = f
  while not bef.empty? do
    nxt = []
    stp += 1
    bef.each{|h, w|
      trace << [h, w]
      lststp = [h, w]
      nxt << [h+1, w] if (not trace.include?([h+1, w])) && h+1 < H && S[h+1][w] == '.'
      nxt << [h-1, w] if (not trace.include?([h-1, w])) && h   > 0 && S[h-1][w] == '.'
      nxt << [h, w+1] if (not trace.include?([h, w+1])) && w+1 < W && S[h][w+1] == '.'
      nxt << [h, w-1] if (not trace.include?([h, w-1])) && w   > 0 && S[h][w-1] == '.'
    }
    bef = nxt.uniq
  end
  [stp - 1, lststp]
end

stp, f = breadth_first_search([sh, sw])
ans, s = breadth_first_search(f)

puts ans
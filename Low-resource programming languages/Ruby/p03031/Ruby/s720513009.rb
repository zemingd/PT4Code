def main
  n,m = gets.chomp.split(" ").map(&:to_i)
  ss = []
  ks = []
  m.times do
    k, *s = gets.chomp.split(" ").map(&:to_i)
    ks.push k
    ss.push s
  end
  ps = gets.chomp.split(" ").map(&:to_i)

  ans = 0
  [0, 1].repeated_permutation(n) do |combination|
    flg = true
    (0...m).each do |i|
      cnt = 0
      ss[i].each do |s|
        cnt += combination[s-1]
      end
      if cnt % 2 != ps[i]
        flg = false
        break
      end
    end
    ans += 1 if flg == true
  end
  puts ans
end

main


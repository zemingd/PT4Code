# N = gets.chomp.to_i
N, M = gets.chomp.split.map(&:to_i)
# A = Array.new(N + 1, 0)  # 0 means no trap, 1 means existence of trap. 1-indexed

lights = []
M.times do |i|
  ks = gets.chomp.split.map(&:to_i)
  k = ks[0]
  s = ks[1..-1]
  light = 0
  s.each do |ss|
    ss -= 1 # 0-indexed
    light += 1 << ss
  end
  lights << light
end

# p lights

p = gets.chomp.split.map(&:to_i)

ans = 0
0.upto((1<<N)-1).each do |pattern|  # pattern is the bit representation of switch. 00..0 to 11..1
  # p "pattern: #{pattern}"
  
  ok = true
  0.upto(M-1).each do |i|
    # p "lights[#{i}]: #{lights[i]}"
    cnt = 0
    0.upto(N-1).each do |j|
      if ((lights[i] & (1 << j)) & (pattern & (1 << j))) > 0
        cnt += 1
      end
    end
    # p "cnt: #{cnt}"
    # p "p[#{i}]: #{p[i]}"
    if (cnt % 2) != p[i]
      ok = false
    end
  end
  if ok
    ans += 1
  end
end

p ans
n, m = gets.split.map(&:to_i)

patterns = []
(0...2**n).each do |x|
  patterns << x.to_s(2).rjust(n, "0")
end

ms = []
m.times do
  ms << gets.split.map(&:to_i)
end

ps = gets.split.map(&:to_i)

ans = 0
patterns.each do |p|
  # puts "p:#{p.inspect}"
  t = true
  ms.each_with_index do |mm, i|
    cnt = 0
    mm[1..-1].each do |mmm|
      # puts "mmm:#{mmm}"
      if p[-mmm] == "1"
        cnt += 1
      end
    end
    # if cnt == 0 || cnt%2 != ps[i]
    if cnt%2 != ps[i]
      # puts "cnt:#{cnt}"
      t = false
    end
  end
  ans += 1 if t
end
puts ans
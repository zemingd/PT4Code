a, b = gets.split.map(&:to_i)
cnt = 0

(a..b).each { |n| cnt += 1 if n.to_s.slice(0) == n.to_s.slice(4) && n.to_s.slice(1) == n.to_s.slice(3) }

p cnt

N, M = gets.chomp.split.map(&:to_i)
requests = ARGF.map {|l| l.chomp.split.map(&:to_i) }
routes = requests.map {|r| (r[0]...r[1]).to_a }.flatten

candidates = routes.group_by(&:itself).map{|j, js| [j, js.length]}.group_by{|js, len| len}.sort_by{|len, jlens| -len}

last_j = -2
rest = M
ans = 0
candidates.select do |len, jlens|
  jlens.select do |j, len|
    next if last_j + 1 == j
    last_j = j
    j
  end
  ans += 1
  rest -= len
  break if rest <= 0
end
puts ans
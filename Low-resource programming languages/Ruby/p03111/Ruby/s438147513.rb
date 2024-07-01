debug = 1

def count_mp(needs, have, join)
  mp = 0
  3.times.each do |i|
    mp += (needs[i]-have[i]).abs
  end
  mp + join * 10
end

N, A, B, C = gets.split.map(&:to_i)
needs = [A, B, C].sort # [80, 90, 100]
p needs if debug == 1
bamboos = N.times.map { gets.to_i }
bamboos.sort! # [21, 30, 40, 80, 98]
p bamboos if debug == 1
minimum = 100000
puts if debug == 1

# (1) 増やす、減らすのみのパターン
choices = bamboos.combination(3).to_a
choices.each do |choice|
  mp = count_mp(needs, choice, 0)
  minimum = mp if mp < minimum
end
puts minimum if debug == 1

# (2) 1度だけ結合を使うパターン
choices = bamboos.combination(4).to_a
choices.each do |choice|
  patterns = choice.combination(2).to_a # 合成用素材
  patterns.each do |pattern|
    new_choice = choice - pattern
    new_choice << pattern.inject(:+)
    new_choice.sort!
    mp = count_mp(needs, new_choice, 1)
    minimum = mp if mp < minimum
  end
end
puts minimum if debug == 1

# (3) 2度結合を使い、3本組のを1つ作るパターン
patterns = bamboos.combination(3).to_a
patterns.each do |pattern|
  restall = bamboos - patterns # 選ばなかった残りがrestallに入る
  rests = restall.combination(2).to_a
  rests.each do |rest|
    choice = rest.dup
    choice << pattern.inject(:+) # これで3つ目がchoiceに入る
    choice.sort!
    mp = count_mp(needs, choice, 2)
    minimum = mp if mp < minimum
  end
end
puts minimum if debug == 1

# (4) 2度結合を使い、2本組のを2つ作るパターン
bamboos.each do |solo|
  # choice = []
  # choice << solo # 合成しない1つ目
  rest = bamboos - [solo] # 残りは4つ
  as = rest.combination(2).to_a
  as.each do |combi_a|
    restall2 = rest - combi_a
    rests2 = restall2.combination(2).to_a
    rests2.each do |combi_b|
      choice = [solo, combi_a.inject(:+), combi_b.inject(:+)]
      choice.sort!
      mp = count_mp(needs, choice, 2)
      minimum = mp if mp < minimum
    end
  end
end
puts minimum if debug == 1

puts minimum

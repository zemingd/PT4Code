INF = 10 ** 6
n = gets.chomp.to_i
nums = gets.chomp.split(" ").map(&:to_i)
odds = Array.new(10 ** 5, 0)
evens = Array.new(10 ** 5, 0)
nums.each_with_index do |num, index|
  if index.even?
    odds[num] += 1
  else
    evens[num] += 1
  end
end

odds_candidates = []
evens_candidates = []

2.times do
  odds_max = odds.index(odds.max)
  if odds[odds_max] == -1
    break
  else
    odds_candidates << [odds_max, n / 2 - odds[odds_max]]
    odds[odds_max] = -1
  end

  evens_max = evens.index(evens.max)
  if evens[evens_max] == -1
    break
  else
    evens_candidates << [evens_max, n / 2 - evens[evens_max]]
    evens[evens_max] = -1
  end
end

odds_candidates << [INF, n / 2]
evens_candidates << [INF, n / 2]

mins = []

odds_candidates.each do |odds_candidate|
  evens_candidates.each do |evens_candidate|
    if odds_candidate[0] == evens_candidate[0]
      next
    else
      mins << odds_candidate[1] + evens_candidate[1]
    end
  end
end

puts mins.min
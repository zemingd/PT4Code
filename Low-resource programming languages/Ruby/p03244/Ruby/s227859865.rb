INF = 10 ** 6
n = gets.chomp.to_i
nums = gets.chomp.split(" ").map(&:to_i)
odds = []
evens = []
nums.each_with_index do |num, index|
  if index.even?
    odds << num
  else
    evens << num
  end
end

odds_candidates = []
evens_candidates = []

2.times do
  unless odds.empty?
    odds_max = odds.max_by {|x| odds.count(x) }
    odds_candidates << [odds_max, n / 2 - odds.count(odds_max)]
    odds.delete(odds_max)
  end

  unless evens.empty?
    evens_max = evens.max_by {|x| evens.count(x) }
    evens_candidates << [evens_max, n / 2 - evens.count(evens_max)]
    evens.delete(evens_max)
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

p mins.min
# C - House Of Kind 2
# https://atcoder.jp/contests/abc147/tasks/abc147_c
#
N = gets.strip.to_i
evidences = []
N.times do
  e = gets.strip.to_i
  e.times do
    evidences.push(gets.strip.split(' ').map(&:to_i))
  end
end
count = 0

[0,1].repeated_permutation(N).each do |kase|
  next unless kase.any?{ |n| n == 1 }
  correct = true
  evidences.each do |person, answer|
    if kase[person] == 1 && kase[person - 1] != answer
      correct = false
      break
    end
  end
  count += 1 if correct
end
puts count

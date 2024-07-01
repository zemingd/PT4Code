n, k, q = gets.chomp.split(' ').map(&:to_i)
ans = []
q.times do
  ans.push(gets.chomp.to_i)
end

scores = Array.new(n, k)
q.times do |i|
  correct_human = ans[i] - 1
  scores.each.with_index {|score, index|
    if correct_human != index
      scores[index] += -1
    end
  }
end

scores.each do |v|
  if v > 0
    print 'Yes' + "\n"
  else
    print 'No' + "\n"
  end
end

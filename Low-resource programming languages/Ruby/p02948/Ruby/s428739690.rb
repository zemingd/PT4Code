n, m = gets.split.map(&:to_i)
abs = []
n.times{ abs << gets.split.map(&:to_i) }

score = 0

abs.sort! do |a, b|
  if a[0] > b[0]
    1
  elsif a[0] == b[0]
    a[1] < b[1] ? 1 : -1
  else
    -1
  end
end

(1..m).each do |d|
  d
  candidate = nil
  candidate_score = nil
  abs.each_with_index{|ab, idx|
    break if ab[0] > d
    if candidate.nil? || ab[1] > candidate_score
      candidate = idx
      candidate_score = abs[candidate][1]
    end
  }
  if candidate
    score += abs[candidate][1]
    abs.delete_at(candidate)
  end
end

p score
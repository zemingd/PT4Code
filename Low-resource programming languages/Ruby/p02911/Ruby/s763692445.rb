N, K, Q = gets.strip.split(' ').map(&:to_i)
A = []
Q.times do
  A.push gets.to_i
end
if K > Q
  N.times { puts 'Yes' }
else
  scores = Array.new(N, K - Q)
  A.each do |a|
    scores[a-1] += 1
  end

  scores.each do |r|
    msg = 'Yes'
    msg = 'No' if r <= 0
    puts msg
  end
end

N, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

k = K - 1

prev = A[0..k].inject(:*)
((k+1)...N).each do |i|
  nxt = prev * A[i] / A[i - k - 1]
 # puts "p:#{prev} n:#{nxt} #{i - k} #{i}"
  if nxt > prev
    puts 'Yes'
  else
    puts 'No'
  end

  prev = nxt
end

def solve
  n, m = gets.split.map!(&:to_i)
  a = gets.split.map!(&:to_i)
  tot_votes = 0
  a.map { |vote| tot_votes += vote }
  cnt = 0
  (0..(n - 1)).each do |i|
    cnt += 1 if a[i] >= tot_votes / (4 * m).to_f
  end

  return 'Yes' if cnt >= m

  'No'
end
print solve

def solve
  n, m = gets.split.map!(&:to_i)
  a = gets.split.map!(&:to_i)
  tot_votes = a.sum
  cnt = 0
  (0..(n - 1)).each do |i|
    cnt += 1 if a[i] >= tot_votes / (4 * m)

    return 'Yes' if cnt == m
  end

  'No'

end
print solve

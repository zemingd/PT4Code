n, m = gets.chomp.split.map(&:to_i)
jobs = []
max_count = 0
for i in 0..n-1 do
  a, b = gets.chomp.split.map(&:to_i)
  jobs << [a, b]
  max_count += b
end

tmp = jobs.sort_by{|job| job[1]}.reverse #お金

money = 0
for i in 1..(m+1)
  break if tmp.empty?
  target = tmp.bsearch_index{|job| job[0] <= i}
  next if target.nil?
  money += tmp[target][1]
  tmp.delete_at(target)
end

puts money
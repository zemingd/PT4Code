n, m = gets.chomp.split(' ').map(&:to_i)
jobs = (1..n).map { gets.chomp.split(' ').map(&:to_i) }.sort { |a, b| (b.last <=> a.last).nonzero? || (a.first <=> b.first) }
sum = 0
1.upto(m) do |d|
  i = jobs.index { |j| j.first <= d }
  sum += if i
    b = jobs[i].last
    jobs.delete_at(i)
    b
  else
    0
  end
end

puts sum

def main
  n, m = gets.chomp.split(' ').map(&:to_i)
  jobs = []
  n.times do
    jobs.push(gets.chomp.split(' ').map(&:to_i))
  end
  schedule = (1..m).to_a
  jobs.sort! { |a, b| (b[1] <=> a[1]).nonzero? || b[0] <=> a[0] }
  sum = 0
  jobs.each do |day, reward|
    i = schedule.bsearch_index { |d| d >= day }
    next unless i
    sum += reward
    schedule[i] = -1
  end
  puts sum
end

main if $0 == __FILE__
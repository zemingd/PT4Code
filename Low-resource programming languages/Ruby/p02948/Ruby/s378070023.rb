N,M = gets.split.map(&:to_i)
jobs = {}
N.times do
  a,b = gets.split.map(&:to_i)
  if jobs[a].nil?
    jobs[a] = [b]
  else
    jobs[a].push(b)
  end
end
jobs = jobs.map{|k,v| [k, v.sort{|a, b| b <=> a }]}.to_h

sum = 0
can_jobs = []
(1..M).each do |i|
  unless jobs[i].nil?
    can_jobs.each_with_index do |x, j|
      if !jobs[i].empty? && x <= jobs[i].first
        can_jobs.insert(j, jobs[i].shift)
      end
    end
    can_jobs.push(*jobs[i])
  end
  sum += can_jobs.shift unless can_jobs.empty?
end

puts sum
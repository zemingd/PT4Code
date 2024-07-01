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
    jobs[i].each do |x|
      if can_jobs.empty?
        can_jobs.push x
      else
        idx = [*can_jobs.each_with_index].bsearch{|y,_| y<= x}&.last
        if idx.nil?
          can_jobs.push x
        else
          can_jobs.insert(idx, x)
        end
      end
    end
  end
  sum += can_jobs.shift unless can_jobs.empty?
end

puts sum
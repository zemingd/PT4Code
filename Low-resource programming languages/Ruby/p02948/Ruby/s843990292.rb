job_count,period = gets.split.map{|s|s.to_i}
jobs = (1..job_count)
.map{|n| gets.split.map{|s|s.to_i}}
.sort_by{|job| job.last * 100000 + job.first}
.reverse

pay = 0
1.upto(period) {|p|
  i = jobs.bsearch_index {|job| job.first <= p}

  next if i == nil

  pay += jobs[i].last
  jobs.delete_at(i)
}

puts pay

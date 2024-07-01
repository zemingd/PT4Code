job_count,period = gets.split.map{|s|s.to_i}
jobs = (1..job_count)
.map{|n| gets.split.map{|s|s.to_i}}
.group_by{|e| e.first }
.each{|day,j| 
  j.map!{|e| e.last }
  j.sort!.reverse!
}

hash = Hash.new
jobs.keys.sort.each {|day| hash[day] = jobs[day] }
jobs = hash

pay = 0
1.upto(period) {|p|
  select_job = nil

  jobs.each {|days,pays|
    break if days > p
    select_job = [days,pays.first] if select_job == nil or select_job.last <= pays.first
  } # 該当する期間より短い仕事を抽出

  if select_job
    pay += select_job.last
    jobs[select_job.first].delete_at(0)
    jobs.delete(select_job.first) if jobs[select_job.first] == []
  end
}

puts pay

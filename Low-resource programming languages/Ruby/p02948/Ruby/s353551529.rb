
job_count,period = gets.split.map{|s|s.to_i}
jobs = (1..job_count)
.map{|n| gets.split.map{|s|s.to_i}}
.group_by{|e| e.first }
.each{|day,jobs| 
  jobs.map!{|e| e.last }
  jobs.sort!.reverse!
}

hash = Hash.new
jobs.keys.sort.each {|day| hash[day] = jobs[day] }
jobs = hash

require "pp"
PP.pp(jobs,STDERR)

pay = 0
1.upto(period) {|p|
  selected_jobs = Hash.new
  jobs.each {|days,pays|
    if days <= p 
      selected_jobs[days] = jobs[days] 
    else
      break
    end
  } # 該当する期間より短い仕事を抽出
  job = selected_jobs
  .map{|days,pays| [days,pays.first] } # 各支払期間の中で報酬が最大のものを選択
  .max{|job1,job2| job1.last <=> job2.last} # 報酬が最も多いものを選択

  if job
    pay += job.last
    jobs[job.first].delete(pay) # TODO バグ入り
    jobs.delete(job.first) if jobs[job.first] == []
  end
}

puts pay

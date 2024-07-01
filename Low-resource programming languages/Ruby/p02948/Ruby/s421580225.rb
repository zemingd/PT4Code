job_count,period = gets.split.map{|s|s.to_i}
jobs = (1..job_count)
.map{|n| gets.split.map{|s|s.to_i}}
.group_by{|e| e[0]}
.each{|k,v| v.map!{|e|e[1]}}

pay = 0
candidates = []
1.upto(period) {|p|
  candidates += jobs[p] if jobs[p] != nil
  candidates.sort!.reverse!
  pay += candidates[0] if not candidates.empty?

  candidates.delete_at(0)
}

puts pay

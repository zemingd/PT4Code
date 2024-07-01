job_count,period = gets.split.map(&:to_i)
jobs = (1..job_count)
.map{|n| gets.split.map(&:to_i)}
.group_by{|e| e[0]}
.each{|k,v| v.map!{|e|e[1]}.sort!}

pay = 0
candidates = []
1.upto(period) {|p|
  if jobs[p] != nil
    #候補を追加
    candidates += jobs[p]
    candidates.sort!
  end
  pay += candidates.pop if not candidates.empty?

  
}

puts pay

class Array
  # 選択される組み合わせのリストを出力する
  def align(period)
    return [self.next_candidates(1)] if period == 1
      
    result = []
        
    self.next_candidates(period).each {|n|
      result.push([n])
      (self - [n]).align(period - 1).each {|jobs|
        result.push([n] + jobs) 
      }
    } 
    result.uniq!
    return result.uniq
  end
  
  # 最初に選択するjobの候補をリストアップ
  def next_candidates(period)
    # daysごとにグルーピング
    result = self.group_by{|e| e[:days] }
    result = result.map { |days,jobs| jobs.max{|job1,job2| job1[:pay] <=> job2[:pay] } }
    result = result.select {|job| job[:days] <= period }
    return result
  end
end
 
job_count,period = gets.split.map{|s|s.to_i}
jobs = []
job_count.times { 
  days,pay = gets.split.map{|s|s.to_i}
  jobs.push({days: days, pay: pay})
}

alined = jobs.align(period)
puts alined.map{|jobs| jobs.inject(0){|sum,job| sum += job[:pay] }}.max

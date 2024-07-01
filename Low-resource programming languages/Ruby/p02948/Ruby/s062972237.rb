n,m=gets.split(' ').map{|i| i.to_i}
jobs = []
n.times do 
  jobs<<gets.split(' ').map{|i| i.to_i}
end

jobs.sort!{|a,b| (b[1] <=> a[1]).nonzero? || (b[0] <=> a[0])}
#puts jobs

profit=0
confirmed_jobs=[]
temp_jobs=[]

while jobs.size > 0
  #報酬高い方から一つ選んで追加
  temp_jobs << jobs.shift
  #due dateでソート
  temp_jobs.sort{|a,b| b[0] <=> a[0]}
  #制約満たしてるかチェック
  violated=false
  temp_jobs.each_with_index do |job,i|
    if m-i >= job[0]
    else
      violated=true
      break
    end
  end
  #満たしてたら
  if violated
    temp_jobs=confirmed_jobs.dup
  else
    confirmed_jobs=temp_jobs.dup
  end
end
#puts  confirmed_jobs

puts confirmed_jobs.inject(0){|sum, job| sum+=job[1]}
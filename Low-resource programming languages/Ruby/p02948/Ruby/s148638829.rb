n,m=gets.split(' ').map{|i| i.to_i}

matrix = []
n.times do 
  job=gets.split(' ').map{|i| i.to_i}
  if matrix[job[0]].nil?
    matrix[job[0]]=[job[1]]
  else
    matrix[job[0]] << job[1]
  end
end
matrix.each do |ary|
  next if ary.nil?
  ary.sort!{|a,b| (b <=> a)}
end

total=0
(0...m).each do |i|
  temp_days=0
  temp_wage=0
  (m-i).downto(0) do |j|
    if not matrix[j].nil? and temp_wage < matrix[j][0]
      temp_days=j
      temp_wage=matrix[j][0]
    end
  end
  if temp_days != 0
    total+=temp_wage
    matrix[temp_days].shift
  end
end
puts total


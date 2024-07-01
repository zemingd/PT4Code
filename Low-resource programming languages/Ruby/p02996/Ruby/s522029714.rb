N = gets.to_i

works = N.times.map { gets.to_i }

works = works.sort_by{|a| a[1]}

result = "No"
time = 0
N.times do |i|
  time += works[i][0]
  if time > works[i][1]
    result = "Yes"
    break
  end
end
 
puts result
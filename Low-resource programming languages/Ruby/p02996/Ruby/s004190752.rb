N = gets.to_i
works = Array.new
N.times do |i|
  works.push!(gets.split(' ').map(&:to_i))
end

works = works.sort_by{|a| a[1]}

result = "Yes"
time = 0
N.times do |i|
  time += works[i][0]
  if time > works[i][1]
    result = "No"
    break
  end
end

puts result
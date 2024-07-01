Work = Struct.new(:required, :limit)

n = gets.to_i
works = n.times.map{Work.new(*gets.split.map(&:to_i))}

works.sort_by!(&:limit)

sum = 0
yes = true
works.each do |work|
  sum += work.required
  if sum > work.limit
    yes = false
    puts 'No'
    break
  end
end

if yes
  puts 'Yes'
end
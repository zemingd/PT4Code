n = gets.to_i
a_and_bs = []
n.times do
  a_and_bs.push(gets.split.map(&:to_i))
end

a_and_bs.sort_by! { |a_and_b| a_and_b[1] }

dp = 0
a_and_bs.each do |a_and_b|
  dp += a_and_b[0]
  if dp > a_and_b[1]
    puts 'No'
    exit
  end
end

puts 'Yes'

n, k, q = gets.split.map(&:to_i)
as = []
q.times do
  as.push gets.to_i
end

(1..n).each do |p|
  answer_num = as.select { |a| a == p }.size
  if k - (q - answer_num) > 0
    puts "Yes"
  else
    puts "No"
  end
end

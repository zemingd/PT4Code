N = gets.to_i
limit = nil
(0...N).map{ gets.split.map &:to_i }.sort_by{ |a,b| [b,a] }.reverse_each{ |a,b|
  limit ||= b
  limit = [limit, b].min
  limit -= a
  if limit < 0
    puts "No"; exit
  end
}

puts "Yes"

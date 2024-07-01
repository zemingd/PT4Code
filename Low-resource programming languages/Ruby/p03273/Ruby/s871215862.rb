
h,w = gets.split.map{|x|x.to_i}

a = h.times.map{ gets.strip.split('') }

2.times do
  a.reject!{ |x| x.all?{|c| c == '.'} }
  a = a.transpose
end

a.each do |l|
  puts l.join
end

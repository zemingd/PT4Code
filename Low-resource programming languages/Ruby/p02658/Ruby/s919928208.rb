N = ARGF.gets.chomp.to_i
aa = ARGF.gets.chomp.split.collect {|el| el.to_i}

mm = 1
aa.each do |ai|
  mm *= ai
end

if 1000000000000000000 < mm
  mm = -1
end

puts mm

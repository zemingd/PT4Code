histogram = Hash.new
('a'..'z').to_a.each{|a| histogram[a] = 0}

$stdin.read.downcase.tr('^a-z','').each_char do |ch|
  histogram[ch] += 1
end

histogram.each do |k,v|
  print k + ' : ' + v.to_s + "\n"
end
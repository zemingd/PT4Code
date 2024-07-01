loop do
  line=gets
  break if line.nil?
    a,b = line.split(" ").map{|i| i.to_i}
    puts (a+b).to_s.size
end


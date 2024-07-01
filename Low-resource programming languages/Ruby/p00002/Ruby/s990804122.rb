while line=gets
  a,b=line.split(" ").map { |s| s.to_i }
  puts (a+b).to_s.size
end


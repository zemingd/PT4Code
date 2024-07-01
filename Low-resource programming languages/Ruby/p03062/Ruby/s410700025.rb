N = gets.strip.to_i
as = gets.strip.split.map(&:to_i)
bs = as.map(&:abs).sort

if as.include?(0) || as.select{|i| i < 0}.length % 2 == 0
  puts bs.inject(&:+)
else
  cs = bs.select{|i| i > 0 }
  puts cs[1..-1].inject(&:+) - cs[0]
end

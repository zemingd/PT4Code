N, M = gets.strip.split.map(&:to_i)

s = ("1" * N).to_i(2)
M.times do 
  l, r = gets.strip.split.map(&:to_i)
  s = s & (("1" * (r - l + 1)) << ("0" * (l - 1))).to_i(2)
end
puts ("%0b" % s).count("1")

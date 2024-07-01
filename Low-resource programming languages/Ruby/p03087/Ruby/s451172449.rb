n,q = gets.split().map(&:to_i)
s = gets.chomp

counts = []
q.times do |i|
  l,r = gets.split().map(&:to_i)
  str = s[l-1..r-1]

  p (str.length - (str.gsub("AC","")).length)/2

end
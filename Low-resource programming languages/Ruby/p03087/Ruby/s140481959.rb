n,q = gets.split().map(&:to_i)
s = gets.chomp

counts = []
q.times do |i|
  l,r = gets.split().map(&:to_i)
  str = s[l-1..r-1]
  str.gsub!("AC","z")
  p str.count("z")
end
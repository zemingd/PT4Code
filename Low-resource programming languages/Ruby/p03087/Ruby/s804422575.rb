n,q = gets.split().map(&:to_i)
s = gets.chomp

q.times do |i|
  l,r = gets.split().map(&:to_i)
  str = s[l-1..r-1]

  (p 0;next) if !str.include?("AC")

  str.gsub!("AC","z")
  p str.count("z")
end
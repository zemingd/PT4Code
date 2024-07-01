a = []
gets.chars do |c|
  a << ["1","9"]-[c]
end
puts a.join
require "set"
h = Set.new
n = gets.to_i
gets.split.map do |s|
  i = s.to_i
  if h.include? i
  	puts "NO"
    exit
  end
  h << i
end
puts "YES"
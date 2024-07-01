TEST = true
def pt(obj)
  p obj if TEST
end

n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

puts a.inject(&:+) - n
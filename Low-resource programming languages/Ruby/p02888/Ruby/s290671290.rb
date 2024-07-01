n = gets.chomp.to_i
l = gets.chomp.split.map(&:to_i)

def tri? a
  return false if a[0] >= a[1] + a[2]
  return false if a[1] >= a[0] + a[2]
  return false if a[2] >= a[1] + a[0]
  return true
end

puts combi = l.combination(3).select{|v| tri? v}.length


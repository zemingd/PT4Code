# abc128 b
N = gets.strip.to_i

a = []
h = {}

N.times do 
  s, p = gets.strip.split
  a << [s, p.to_i]
  h[s] = [] if h[s].nil?
  h[s] << p.to_i
end

h.sort.each do |k, v|
  v.sort.reverse.each { |p| puts a.index([k, p]) + 1 }
end

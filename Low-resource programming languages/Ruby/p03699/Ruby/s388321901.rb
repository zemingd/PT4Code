n = gets.to_s.to_i
S = Array.new(n){ gets.to_s.to_i }

h = Hash.new(0)
h[0] = 0
sum_z = 0

S.each do |s|
  
  if 0 == s % 10
    
    sum_z += s
    
  else
    d = h.dup
    h.keys.each{ |k| d[(s+k)%10] = h[k] + s }
    h = d.dup
  end
end

t = h.values.drop(1).max

puts t.nil? ? 0 : sum_z + t
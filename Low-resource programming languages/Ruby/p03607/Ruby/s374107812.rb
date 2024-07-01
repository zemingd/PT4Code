N = gets.to_i
hash = {}
N.times do
    n = gets.to_i
    hash[n] = hash[n].to_i + 1
end
puts hash.select{|k, v| v.odd?}.size
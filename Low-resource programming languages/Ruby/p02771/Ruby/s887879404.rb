S = {}
(gets.to_i).times do 
  key = gets.chomp
    if S.key?(key)
        S[key] += 1 
    else 
        S.store(key, 1)
    end
end

max = S.values.max
puts S.keep_if {|_, v| v == max}
puts S.keys.sort
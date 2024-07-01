s = gets.upcase.strip.to_s

a_index = nil
z_index = nil

s.length.times do |i|
    if a_index.nil? && s[i] == "A"
        a_index = i
    elsif s[i] == "Z" && !a_index.nil?
        z_index = i 
    end   
end

puts z_index - a_index + 1
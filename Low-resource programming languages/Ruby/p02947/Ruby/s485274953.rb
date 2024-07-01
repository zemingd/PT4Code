n = gets.to_s.to_i
words = Array.new(n){ gets.to_s.chomp }

h = Hash.new()
ans = 0
words.each do |s|
  
  if h.has_key?(s)
    ans += (h[s] += 1)
  else
    h[s] = 0
  end
end

puts ans
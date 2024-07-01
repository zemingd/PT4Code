n = gets.to_i
words = Array.new(n){ gets.chomp.bytes.sort.pack("U*") }

h = Hash.new
ans = 0
words.each do |s|
  
  if h.has_key?(s)
    h[s] += 1
    ans += h[s]
    p 
  else
    h[s] = 0
  end
end

puts ans
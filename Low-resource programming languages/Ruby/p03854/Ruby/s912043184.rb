S = gets.chomp

s = S.clone

while true do
  S.gsub!(/(dream|dreamer|erase|eraser)$/, "")
  (s == S) ? break : s = S
end

puts S.empty? ? "YES" : "NO"

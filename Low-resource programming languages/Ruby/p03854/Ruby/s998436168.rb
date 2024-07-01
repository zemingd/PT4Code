S = gets.chomp.reverse!

s = S.clone

while true do
  S.gsub!(/(maerd|remaerd|esare|resare)/, "")
  (s == S) ? break : s = S.clone
end

puts S.empty? ? "YES" : "NO"


s = gets.chomp!
s.reverse!

sl = ["dream", "dreamer", "erase", "eraser"]
sl.each { |st| st.reverse! }

while !s.empty? do
  fl = false
  sl.each do |st|
    if s[0...st.length] == st
      s.slice!(0...st.length)
      fl = true
    end
  end
  break if(!fl) 
end

puts "YES" if fl
puts "NO" unless fl

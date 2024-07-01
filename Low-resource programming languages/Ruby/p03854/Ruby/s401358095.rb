s = gets.chomp!
s.reverse!

sl = ["dream", "dreamer", "erase", "eraser"]
sl.each { |st| st.reverse! }

fl = false
while !s.empty? do
  sl.each do |st|
    if s[0...st.length] == st
      s.slice!(0...st.length)
      fl = true
    end
  end
  break if(!fl) 
end

p "YES" if fl
p "NO" unless fl
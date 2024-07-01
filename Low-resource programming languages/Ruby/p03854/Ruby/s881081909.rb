S = gets.reverse
T = ['dream', 'dreamer', 'erase', 'eraser'].map(&:reverse)

c = 0
until S.empty? do
  T.each do |t|
    if S[0, t.size]  == t
      S.gsub!(/#{t}/, '') 
      c = 0
    else
      c += 1
    end
  end
  break if c == T.count
end

puts S.empty? ? 'YES' : 'NO'
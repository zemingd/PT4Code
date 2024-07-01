S = gets.reverse
T = ['dream', 'dreamer', 'erase', 'eraser'].map(&:reverse)

T.each do |t|
  while (S.include?(t)) do
    S.gsub!(/#{t}/, '')
  end
end

puts S.empty? ? 'YES' : 'NO'
def lscan; gets.split.map(&:to_i);end
def bye(s); puts s; exit 0; end

str = gets.chomp
K = gets.to_i

(0...(K-1)).each do |i|
    bye str[i] if str[i] != '1'
end

puts str[K-1]
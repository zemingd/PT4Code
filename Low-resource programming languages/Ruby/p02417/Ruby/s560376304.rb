ans = Hash.new(0)
ALPHABET = [*'a'..'z']

loop do
  s = gets
  break if s.nil? || s.length == 0
  s.downcase.chars.each do |c|
    ans[c] += 1 if ALPHABET.include?(c)
  end
end
ALPHABET.each do |k|
  puts "#{k} : #{ans[k]}"
end
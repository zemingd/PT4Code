ha = Hash.new(0)

while b = gets
  alpha = b.downcase.tr('^a-z', '')

  alpha.chars do |char|
    ha[char] += 1
  end
end

('a'..'z').each do |char|
  puts "#{char} : #{ha[char]}"
end


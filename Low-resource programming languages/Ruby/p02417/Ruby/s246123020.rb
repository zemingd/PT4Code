s = $stdin.read.downcase

grouped = s.split("").group_by{|e| e}
('a'..'z').each do |ch|
    hash = grouped[ch]
    num = hash == nil ? 0 : hash.length
    puts "#{ch} : #{num}"
end


cnt = Hash.new(0)
$<.each do |l|
  l.chomp.downcase.split(//).each{|c|
    cnt[c] += 1
  }
end

('a'..'z').each{|c|
  puts "#{c} : #{cnt[c]}"
}
n = ARGF.gets
s = ARGF.gets.chomp.split(//)
uniq = []
s.each do |ch|
  unless uniq[0] == ch
    uniq.unshift(ch)
  end
end
puts uniq.size

$stdin = DATA if $stdin.eof?

appear_count = Hash.new(0)
ARGF.each_line do |line|
  line.downcase.each_char.group_by{|c| c}.map{|k, arr| appear_count[k] += arr.size}

end

('a'..'z').each do |c|
  puts "#{c} : #{appear_count[c]}"
end

__END__
This is a pen.
zzzz
io = STDIN
s=io.gets.chomp.split(//)
buf=""
s.each do |c|
  case c
  when "0","1"
    buf << c
  else
    if buf == ""
      buf = ""
    else
      buf=buf[0..-2]
    end
  end
end
puts buf
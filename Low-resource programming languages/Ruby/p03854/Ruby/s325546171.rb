s = gets.strip

['dream', 'dreamer', 'erase', 'eraser'].each do |t|
        s.gsub!(/#{t}/, "")
end
if s == ""
        puts 'YES'
else
        puts 'NO'
end
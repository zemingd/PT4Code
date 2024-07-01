s = gets
if s.chop.gsub!(/hi/, '')==''
    puts 'Yes'
else
    puts 'No'
end
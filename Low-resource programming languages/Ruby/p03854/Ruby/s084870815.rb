s=gets.chomp
n=s.size
pat=['dream', 'dreamer', 'erase', 'eraser'].map{|s| s.reverse}

s.reverse!
i=0
while i<n
  tmp=''
  pat.each do |t|
    if s.start_with?(t)
      tmp=t
      break
    end
  end
  if tmp.size>0
    i+=tmp.size
  else
    puts 'NO'
    exit 0
  end
end

puts 'YES'
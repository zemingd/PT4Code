str=gets.chomp
t=gets.chomp
length=str.length
i=-1
loop_count = 0
t.each_char do |char1|
    i=str.index("#{char1}",i+1)
  unless i
    i=str.index("#{char1}")
    loop_count += 1
    unless i
      puts -1
      exit
    end
  end
end

if i
printf "%d\n",length * loop_count + i + 1
end
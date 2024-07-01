arr = []
gets.to_i.times do |i|
  arr << gets.chomp
end

if arr.size != arr.uniq.size
  puts 'No'
else
  lastword = arr[0][0]
  arr.each do |word|
    # puts "lastword:#{lastword}, word[0]:#{word[0]}"
    if lastword != word[0]
      puts 'No'
      exit
    else
      lastword = word[-1]
    end
  end
  puts 'Yes'
end
t = gets.split(" ")

dis, time, spm = t.map(&:to_i)

if spm >= dis/time.to_f
  puts 'Yes'
else
  puts 'No'
end
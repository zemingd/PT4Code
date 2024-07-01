t = gets.split(" ")

dis, time, spm = t.map(&:to_i)

if spm >= dis/time
  puts 'Yes'
else
  puts 'No'
end
N,M,*as=$<.read.split.map(&:to_i)

sum = as.inject(&:+)
if M <= as.count { |a| a >= sum / (4.0 * M)}
  puts 'Yes'
else
  puts 'No'
end

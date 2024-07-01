S = gets.chomp
T = gets.chomp

cl = Hash.new
len = S.length
check = true
len.times do |i|
  if cl[S[i]] == nil
    cl[S[i]] = T[i]
  elsif cl[S[i]] != T[i]
    check = false
    break
  end
end
if cl.values.size != cl.values.uniq.size
  check = false
end

if check
  puts 'Yes'
else
  puts 'No'
end
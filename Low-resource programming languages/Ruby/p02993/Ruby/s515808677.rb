S=gets.split("").map(&:to_i)

(0..S.length-2).each do |i|
  if S[i] == S[i+1]
    flag=1
  end
end

if flag == 1
  puts "Bad"
else
  puts "Good"
end

S = gets.chomp.split("") #1文字ずつ区切る

(0..S.length - 2).each do |cnt|
  if S[cnt] != S[cnt + 1]
    puts "Yes"
    exit
  end
end

if S[0] != S[2]
  puts "Yes"
  exit
end

puts "No"


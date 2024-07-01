S = gets.chomp              # 文字列。chompを付けないと改行文字がついてくる
S.freeze

if S["7"].nil? then
  puts "No"
else
  puts "Yes"
end
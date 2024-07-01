S=gets.chomp

# puts S.rindex('Z') - S.index('A') + 1
puts S[/A.*Z/].size
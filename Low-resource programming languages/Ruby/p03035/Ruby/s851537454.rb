/n,a,b=gets.split.map(&:to_i)/
/.sort/
/S = gets.chomp.chars/

aa,bb=gets.split.map(&:to_i)
if(aa>=13)
  puts bb
elsif(aa<13&&aa>=6)
  puts bb/2
else
  puts 0
end

io = STDIN
c=io.gets.chomp
if  c =~ /[aiueo]/
  puts "vowel"
else
  puts "consonant"
end
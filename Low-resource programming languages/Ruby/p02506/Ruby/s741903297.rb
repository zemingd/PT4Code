cnt=0
rg = Regexp.new(gets.chomp,Regexp::IGNORECASE)
loop do
  s = gets.chomp
  break if s =~ /END_OF_TEXT/
  s.split.each do |word|
    cnt+=1 if rg =~ word
  end
end
puts cnt
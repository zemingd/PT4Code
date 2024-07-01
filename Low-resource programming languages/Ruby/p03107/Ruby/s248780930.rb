s=gets.chomp
originLength = s.length
loop do
  flags=[]
  flags << s.gsub!(/1100/,"")
  flags << s.gsub!(/1010/,"")
  flags << s.gsub!(/1001/,"")
  flags << s.gsub!(/0110/,"")
  flags << s.gsub!(/0101/,"")
  flags << s.gsub!(/0011/,"")
  break if flags.all?{|flag|flag==nil}
end
puts originLength - s.length
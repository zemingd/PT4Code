io = DATA.eof? ? STDIN : DATA

str=io.gets.chomp
if str == "RRS" ||
  str == "SRR"
  puts 2
elsif str == "RRR"
  puts 3
elsif str == "SSS"
  puts 0
else
  puts 1
end
__END__

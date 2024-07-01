io = DATA.eof? ? STDIN : DATA
x=io.gets.to_i
if x>=30
  puts 'Yes'
else
  puts 'No'
end

__END__

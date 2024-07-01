while (ln = gets.chomp) != '0' do
  puts ln.split('').inject(0){|sum,s|sum+=s.to_i}
end
A, B = gets.split.map(&:to_i)
S = gets.chomp
if S.count("-")==1 && S[0..(A-1)].gsub(/[0-9]/, '').empty? && S[-B..-1].gsub(/[0-9]/, '').empty?
  puts 'Yes'
else
  puts 'No'
end

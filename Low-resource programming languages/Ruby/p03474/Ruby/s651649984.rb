A,B = gets.split.map(&:to_i)
S = gets.chomp.chars
if S[A] == '-' && S[0..A-1].all?{|s| s.match(/\d/)} && S[A+1..-1].all?{|s| s.match(/\d/)}
    puts 'Yes'
else
    puts 'No'
end
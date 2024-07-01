S = gets
date = (S[0..3] + S[5..6] + S[8..9]).to_i
if date <= 20190430
  puts "Heisei"
else
  puts "TBD"
end
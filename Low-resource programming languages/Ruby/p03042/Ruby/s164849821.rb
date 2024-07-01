S = gets.chomp

A = S[0,2].to_i
B = S[2,2].to_i

class Integer
  def month?
    (1..12).include? self
  end
end

if [A,B].all? &:month?
  puts "AMBIGOUS"
elsif A.month?
  puts "MMYY"
elsif B.month?
  puts "YYMM"
else
  puts "NA"
end
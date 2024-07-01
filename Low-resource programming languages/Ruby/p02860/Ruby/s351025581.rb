n = gets.to_i
s = gets.to_s
 
if n%2==1
 puts "No" 
else 
  before_half = s[0, n/2]
  after_half = s[n/2, n/2]

  if before_half == after_half
      puts "Yes"
  else
      puts "No"
  end
end
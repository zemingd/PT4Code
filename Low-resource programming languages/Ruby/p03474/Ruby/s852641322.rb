A,B = gets.split.map(&:to_i).map{|n| n-1}
S = gets.chomp

puts ((/[0-9]{#{A+1}}/ =~ S[0..A]) == 0 and
  S[A+1] == '-' and
  (/[0-9]{#{B+1}}/ =~ S[A+2..A+2+B]) == 0) ?
  "Yes" : "No"
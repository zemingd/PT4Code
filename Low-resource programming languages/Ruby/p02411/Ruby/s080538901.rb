while true 
a=gets.split.map &:to_i
score=a.inject[:+]

break if score=="-3"
puts A if score >= 80
puts B if score >= 65 && sore < 80
puts C if score >= 50 && sore < 65
puts D if score >= 30 && sore < 80
puts F if score < 30

end

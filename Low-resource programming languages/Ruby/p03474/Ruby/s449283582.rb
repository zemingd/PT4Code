a, b = gets.split.map(&:to_i)
s = gets.chomp.to_s

# a と b の式展開を忘れずに
puts s =~ /\d{#{a}}-\d{#{b}}/ ? "Yes" : "No"

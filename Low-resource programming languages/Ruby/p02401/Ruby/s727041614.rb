while true
  a,op,b = gets.chomp.split(" ")
  break if op == "?"

  case op
  when "+"
    puts "{a.to_i+b.to_i}"
  when "-"
    puts "{a.to_i-b.to_i}"
  when "*"
    puts "{a.to_i*b.to_i}"
  when "/"
    puts "{(a.to_i/b.to_i).floor}"
  end
end
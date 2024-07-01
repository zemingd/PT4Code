while ((a,op,b = gets.split(" ")).select{|i| i == "?"}.length == 0) do
  case op
  when "+" then
    puts [a,b].map(&:to_i).inject(:+)
  when "-" then
    puts [a,b].map(&:to_i).inject(:-)
  when "*" then
    puts [a,b].map(&:to_i).inject(:*)
  when "/" then
    puts [a,b].map(&:to_i).inject(:/)
  end
end
y,m,_=gets.split("/").map(&:to_i)
if y<2019 then
  p("Heisei")
elsif m<5 then
  p("Heisei")
else
  p("TBD")
end

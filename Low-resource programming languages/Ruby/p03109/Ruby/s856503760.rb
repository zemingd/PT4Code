y,m,d = gets.split("/").map(&:to_i)

if m < 5 then
    p "Heisei"
else
    p "TBD"
end
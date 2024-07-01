s = gets.split("")

flg = true
foo = ""
for var in s do
    if foo == var
        flg = false 
        break
    end
    foo = var
end

puts flg ? "Good" : "Bad"
input = gets
n = input.split("")
if n.count("1")<n.count("0") then
    print n.count("1")*2
else
    print n.count("0")*2
end
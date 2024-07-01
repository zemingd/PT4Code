n = gets.to_s

array = n.split("")
chka = [0,0,0]

i = 0

while i <= 2 do
    j = 1
    while j <= 2 do
        if array[i] != array[j] then
            chka[i] = 1 
            chka[j] = 1
        end
        j = j + 1
    end
    i = i + 1
end
i = 0
chkt = true
#p chka
while i <= 2 do
    if chka[i] == 0 then
        #p chka[i]  
        chkt = false
    end
    i = i + 1
end
if chkt  == false then
    puts 'No'
else
    puts 'Yes'
end
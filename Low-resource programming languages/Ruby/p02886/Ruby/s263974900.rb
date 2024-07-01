N = gets.to_i
takoyaki = gets.split(' ').map(&:to_i)

oishisa_total = 0
oishisa = 0
a = 0

while a < N do

    b = a + 1

    while b < N do
    
        oishisa = oishisa + takoyaki[a] * takoyaki[b] 

        b = b + 1

    end

    oishisa_total = oishisa_total + oishisa
    oishisa = 0
    a = a + 1

    puts oishisa_total

end

puts oishisa_total
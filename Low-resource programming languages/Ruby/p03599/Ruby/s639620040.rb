A,B,C,D,E,F = gets.split.map(&:to_i)

itika = []
nino = []
miku = []
yotuha = []
ituki = []



for a in 0..F / (100 * A)
    for b in 0..(F - (100 * A * a) ) / (100 * B)
        for c in 0..(F - (100 * A * a + 100 * B * b)) / C 
            for d in 0..(F - (100 * A * a + 100 * B * b + C * c)) / D 

                itika.push(a)
                nino.push(b)
                miku.push(c)
                yotuha.push(d)
                
                if C * c + D * d <= E * (A * a + B * b) && (0 < a || 0 < b)

                    ituki.push((C * c + D * d).to_f / (100 * A * a + 100 * B * b))

                else

                    ituki.push(0)

                end
            end
        end
    end
end

x = ituki.index(ituki.max)

puts "#{100 * A * itika[x] + 100 * B * nino[x] + C * miku[x] + D * yotuha[x]} #{C * miku[x] + D * yotuha[x]}"

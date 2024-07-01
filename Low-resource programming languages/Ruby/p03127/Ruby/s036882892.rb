N = gets.to_i
A = gets.strip.split.map(&:to_i)
a = 0
b = 0
i = 0
B = []
while a == 0

    b = 0

    B = Marshal.load(Marshal.dump(A))
    c = B.select{|x| x > 0}.min 

    for i in 0..N-1

        if b == 0 && A[i] == c

            A[i] += 0
            b += 1

        else 

            A[i] = A[i] % c

        end

    end

    if A.select{|x| x > 0}.size == 1

        a += 1

    end

end 

puts A.select{|x| x > 0}[0]
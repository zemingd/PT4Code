N = gets.to_i
A = gets.chomp.split(" ").map(&:to_i)
count = 0

while count <= N do
    A.each do |a|
        if a / 2 == 0 
            if (a / 3 != 0) || ( a / 5 != 0)
                puts "DENIED"
                break
            else count += 1

            end

        else count += 1
        end

    end
end

if count == N
    puts "APPROVED"
end
N = gets.chomp.to_i
A = gets.split.map(&:to_i)

biggest = 0
N.times do | i |
    list  = Marshal.load(Marshal.dump(A))
    list.delete_at(i)
    temp = list.inject(:gcd)
    if biggest < temp then
        biggest = temp
    end
end

puts biggest
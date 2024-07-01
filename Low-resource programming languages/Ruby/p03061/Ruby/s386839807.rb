require 'prime'

def getList(data)
    temp = data.prime_division
    min = 9999999999999999
    d = 1
    temp.each do |data|
        d = d * (data[0] * data[1])
    end
    return d
end

N = gets.chomp.to_i
A = gets.split.map(&:to_i)

biggest = 0
index = 0
N.times do | i |
    temp = getList(A[i])
    if biggest < temp then
        biggest = temp
        index = i
    end
end
A.delete_at(index)
puts A.inject(:gcd)

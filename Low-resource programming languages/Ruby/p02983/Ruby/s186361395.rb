require 'prime'

L, R = gets.split.map(&:to_i)
D = 2019

Min = ((L % D)*((L + 1) % D)) % D
Max = (((R - 1) % D)*(R % D)) % D

STDERR.puts "#{Min} #{Max}"

if R - L == 1 then
    p Max
    exit 0
end

if Min == 0 || Max == 0 || Min > Max || Max - Min < R - L then
    p 0
    exit 0
end

p [Min, Max].min

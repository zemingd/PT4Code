X,A,B=gets.chomp.split(' ').map{|n| n.to_i}

if B <= A then
    p 'delicious'
    exit
end

if B <= A + X then
    p 'safe'
    exit
end

p 'dangerous'
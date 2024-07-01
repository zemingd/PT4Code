K,A,B=$<.read.split.map(&:to_i)

K.step(1000,K) do |i|
    if A <= i && i <= B
        puts 'OK'
        exit 0
    end
end

puts 'NG'

n = gets.to_i; s = gets.split(""); hoge = []
(1..(n-1)).each do |i|
    fuga = s[0...i] & s[i...n]
    hoge.push(fuga.length)
end
puts hoge.max
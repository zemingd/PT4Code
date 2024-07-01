n = gets.to_i
w = gets.split.map(&:to_i)

result = 100
(1...n).each do |i|
    hoge = w.first(i).inject(:+)
    piyo = w.last(n - i).inject(:+)
    fuga = (hoge - piyo).abs
    if fuga < result then
        result = fuga
        break if fuga == 0
    end
end

puts result
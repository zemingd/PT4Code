N, M = gets.chomp.split.map(&:to_i)
hArr = gets.chomp.split.map(&:to_i)
mArr = M.times.map { gets.chomp.split.map(&:to_i) }

gArr = []
N.times do |i|
    gArr.push(true)
    mArr.each do |m|
        if m.include?(i) then
            oi = nil
            m.each do |mm|
                oi = mm unless mm == (i + 1)
            end
            gArr[i - 1] = false unless hArr[i] > hArr[oi - 1]
        end
    end
end

puts gArr.count(true).to_s             
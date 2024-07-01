X, N = gets.chomp.split.map(&:to_i)
pArr = gets.chomp.split.map(&:to_i)

50.times do |d|
    [X - d, X + d].each do |ans|
        unless pArr.include?(ans) then
            puts ans
            exit
        end
    end
end

MAX = 10 ** 18
arr = $<.read.split.map(&:to_i).drop(1)

if arr.include?(0)
    ans = 0
else
    ans = 1
    arr.each do |x|
        ans *= x
        if MAX < ans
            ans = -1
            break
        end
    end
end

puts ans
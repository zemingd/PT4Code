h, w = gets.split.map(&:to_i)
arr = Array.new(w){[0, 0]}
ans = 0
h.times do |i|
    s = gets
    k = 0
    w.times do |j|
        if s[j] == "#"
            k.upto(j-1) {|l| arr[l][1] = j - k if arr[l][1] < j - k}
            k = j + 1
            ans < (sum = arr[j][0] + arr[j][1]) and ans = sum
            arr[j] = [0, 0]
        else
            arr[j][0] += 1
        end
    end
    k.upto(w-1) {|l| arr[l][1] = w - k if arr[l][1] < w - k}
end

arr.each {|a, b| ans = a + b if ans < a + b}
puts ans - 1
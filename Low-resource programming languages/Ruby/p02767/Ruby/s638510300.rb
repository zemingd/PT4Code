# Your code here!
num = gets
arr = gets.chop.split.map(&:to_i).sort
min, max = arr[0], arr[-1]
point = (max - min) / 2
ans = 10**10
min.upto(max) do |point|
    tmp = 0
    arr.each do |num|
        tmp += (num - point)**2
    end
    ans = tmp < ans ? tmp : ans
end
p ans
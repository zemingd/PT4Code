N = gets.to_i
A = Array.new(N)
X = []
N.times do |i|
    A[i] = gets.to_i
    X.push i+1 if A[i] == 2
end
if X.empty? then
    puts '-1'
    exit
end
button = 1
num = 0
th = 10**5
loop do
    num += 1
    before = button
    button = A[button-1]
    break if button == 2
    if num >= th || before == button then
        num = -1
        break
    end
end
puts num
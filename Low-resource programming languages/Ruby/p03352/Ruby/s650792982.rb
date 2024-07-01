require 'complex'
X = gets.to_i
arr = Array.new(X+1, false)
arr[1] = true
(2..Math.sqrt(X).floor).each{|i|
    _p = 1
    while i ** _p <= X do
        arr[i ** _p] = true
        _p += 1
    end
}
X -= 1 while !arr[X]
puts X
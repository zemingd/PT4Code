h, w = gets.split.map(&:to_i)

((h*w)%2 == 0) ? (ans = h*w/2):(ans = (h*w+1)/2)
(h == 1 || w == 1) ? (puts 1):(puts ans)
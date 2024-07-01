N = gets.to_i
S = gets.chomp.chars
cnt = [[0, S.count(".")]]
S.each do |c|
  if c == "#"
    cnt << [cnt.last[0]+1, cnt.last[1]]
  else
    cnt << [cnt.last[0], cnt.last[1]-1]
  end
end
return cnt.map {|a,b|a+b}.min

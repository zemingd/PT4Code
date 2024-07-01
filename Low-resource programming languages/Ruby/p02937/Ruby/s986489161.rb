s = gets.chomp
t = gets.chomp

pos = Hash.new{|h,k| h[k]=[]}
s.each_char.with_index do |c, i|
  pos[c] << i
end
l = 0
prev_i = pos[t[0]][0]
t[1..-1].each_char do |c|
  j = pos[c].bsearch do |x|
    begin
      x > prev_i
    rescue ArgumentError
      puts -1
      exit
    end
  end
  prev_i = j || pos[c][0]
  l += 1 if !j
end

p s.size * l + (prev_i + 1)
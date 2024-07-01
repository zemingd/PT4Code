def lscan; gets.split.map(&:to_i); end
def bye(msg); puts msg.to_s; exit; end

s = gets.chomp
n = s.size
m = n/2

bye 'No' if s != s.reverse
bye 'No' if s[0..(m-1)] != s[0..(m-1)].reverse
bye 'No' if s[(m+1)...n] != s[(m+1)...n].reverse
bye 'Yes'
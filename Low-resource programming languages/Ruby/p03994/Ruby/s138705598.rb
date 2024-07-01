input = $stdin.read.split("\n")
s = input[0]
k = input[1].to_i
 
s.chars.each_with_index do |c, i|
    next if (c == "a")
    diff = ("z".ord - c.ord + 1)%26
    if (diff <= k)
        s[i] = "a"
        k = k - diff
    end
end
 
if k > 0
    last = s.length-1
    char = (s[last].ord + (k%26)).chr
    char = (char.ord - 26).chr if char.ord > "z".ord
    s[last] = char
end
 
puts s
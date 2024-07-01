S = gets.chomp.split("")
T = gets.chomp.split("")
h = Hash.new
ans = true
S.zip(T).each do |s, t|
    if h[s].nil?
        h[s] = t
    elsif h[s] == t
        next
    else
        ans = false
        break
    end
end

def return_to_self(h, k, v, count = 0)
    if count > 27
        false
    elsif h[v].nil? || k == h[v]
        true
    else
        return_to_self(h, k, h[v], count + 1)
    end
end

h.each do |k, v|
    ans &&= return_to_self(h, k, v)
end
puts ans ? "Yes" : "No"
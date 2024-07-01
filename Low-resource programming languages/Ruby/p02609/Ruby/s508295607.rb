N = gets.to_i
s = gets.chomp
@hash = {0 => 0}
def divop(n)
    @hash[n] ||= divop(n % n.to_s(2).count('1')) + 1
    @hash[n]
end
N.times do |n|
    org = s[n]
    s[n] = (org == '0' ? '1' : '0')
    puts divop(s.to_i(2))
    s[n] = org
end
a, b, c = gets.strip.split.map(&:to_i)

result = c-(a-b)

result=0 if result<0

p result
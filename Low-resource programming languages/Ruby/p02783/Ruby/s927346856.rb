h , a = gets.chop.split.map(&:to_i)
def atack_count(h,a)
if h % a == 0
  h / a
elsif (h / a) + 1
end
end

p atack_count(h,a)
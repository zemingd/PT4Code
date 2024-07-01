def cin; gets.split.map(&:to_i) end

# exit if $0 != __FILE__

# n, *x = cin
# s = gets.chomp

# puts n

n,m = cin
ls = []
m.times do
  a = cin
  a.shift
  ls << a
end
ps = cin

c = 0

(2**n).times do |x|
  # p "x=#{x}"
  all = true
  m.times do |y|
    ons = ls[y].inject(0) {|memo, item| memo + x[item-1]}
    # p "ons=#{ons}"
    all = false if ons % 2 != ps[y]
  end
  c += 1 if all
end

puts c

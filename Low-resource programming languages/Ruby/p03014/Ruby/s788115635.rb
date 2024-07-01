require 'pp'
h, w = gets.split.map(&:to_i)

s = []
h.times do
  s << gets.chomp.chars
end
# pp s
# 4 * 10**6
ss = Array.new(h){Array.new(w, 0)}

max = 0

h.times do |hi|
  w.times do |wi|
    if s[hi][wi] == '.'
      if wi == 0
        ss[hi][wi] = 1
      else
        ss[hi][wi] = ss[hi][wi-1] + 1
      end
    end
  end
end

h.times do |hi|
  (w-2).downto(0) do |wi|
    if s[hi][wi] == '.'
      ss[hi][wi] = ss[hi][wi+1] if ss[hi][wi] < ss[hi][wi+1]
    end
  end
end
# pp ss;puts '-----------'

sss = Array.new(h){Array.new(w, 0)}

h.times do |hi|
  w.times do |wi|
    if s[hi][wi] == '.'
      if hi == 0
        sss[hi][wi] = 1
      else
        sss[hi][wi] = sss[hi-1][wi] + 1
      end
    end
  end
end

(h-2).downto(0) do |hi|
  w.times do |wi|
    if s[hi][wi] == '.'
      sss[hi][wi] = sss[hi+1][wi] if sss[hi][wi] < sss[hi+1][wi]
    end
  end
end
# pp sss

# tmp = Array.new(h){Array.new(w, 0)}

h.times do |hi|
  w.times do |wi|
    n = ss[hi][wi] + sss[hi][wi] - 1
    # tmp[hi][wi] = n
    if max < n
      max = n
    end
  end
end
# pp tmp
p max



# 8 13

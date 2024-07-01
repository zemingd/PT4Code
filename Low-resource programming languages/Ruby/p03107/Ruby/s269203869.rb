# わからん とりあえずWA覚悟で適当にシミュレーションすっか

s = gets.chomp.chars.map(&:to_i)
@c = 0
def f(s)
  if s.size==1 || s.empty?
    return  # ???????????
  end
  (s.size-1).times do |si|
    if s[si]+s[si+1] == 1
      nexs = s[0, si] + s[si+2, s.size]
      @c+=2
      f(nexs)
      break
    end
  end
end

f(s)
puts @c
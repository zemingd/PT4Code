gets
@n = $<.map{|m| m.chomp.split('')}
@n_size = @n.size
@d = Array.new(@n_size).map{Array.new(@n_size, nil)}
@all = @n_size * @n_size

def s(x)
  0 <= x && x < @n_size
end

def f(x,y,i)
  if s(x+1) && s(y) && @d[x+1][y] == nil
    @d[x+1][y] = i
    @all -= 1
  end
  if s(x-1) && s(y) && @d[x-1][y] == nil
    @d[x-1][y] = i
    @all -= 1
  end
  if s(x) && s(y+1) && @d[x][y+1] == nil
    @d[x][y+1] = i
    @all -= 1
  end
  if s(x) && s(y-1) && @d[x][y-1] == nil
    @d[x][y-1] = i
    @all -= 1
  end
end

@n_size.times do |x|
  @n_size.times do |y|
    if @n[x][y] == "#"
      @d[x][y] = 0
      @all -= 1
    end
  end
end
k = 0

while !@all.zero?
  @n_size.times do |x|
    @n_size.times do |y|
      if @d[x][y] == k
        f(x,y,k+1)
      end
    end
  end
  k+=1
end

p @d.flatten.max

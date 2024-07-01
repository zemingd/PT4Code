class Heap
  def initialize
    @array = []
  end

  def insert(key)
    @array.push(key)

    # sifting up
    index = @array.size - 1
    until index == 0
      pindex = (index - 1) / 2
      if (@array[index] <=> @array[pindex]) <= 0
        break
      else
        @array[pindex], @array[index] = @array[index], @array[pindex]
        index = pindex
      end
    end
  end

  alias push insert

  def peek
    if @array.empty?
      fail 'empty'
    end

    @array[0]
  end

  def size
    @array.size
  end

  def empty?
    @array.empty?
  end

  def pop
    if @array.empty?
      fail 'empty'
    end

    top = @array[0]
    last = @array.pop
    if @array.empty?
      return top
    end

    @array[0] = last
    i = 0
    # sifting down
    while true
      break unless i*2 + 1 < @array.size

      if i*2 + 2 < @array.size &&
         (@array[i*2 + 1] <=> @array[i*2 + 2]) <= 0
        if (@array[i*2 + 2] <=> @array[i]) <= 0
          break
        else
          @array[i], @array[i*2 + 2] = @array[i*2 + 2], @array[i]
          i = i*2 + 2
        end
      else
        fail "logic error" unless i*2 + 1 < @array.size
        if (@array[i*2 + 1] <=> @array[i]) <= 0
          break
        else
          @array[i], @array[i*2 + 1] = @array[i*2 + 1], @array[i]
          i = i*2 + 1
        end
      end
    end

    return top
  end
end

def degrade(ai, bi, ci)
  res = []
  if ai > 0
    res.push [ai - 1, bi, ci]
  end
  if bi > 0
    res.push [ai, bi - 1, ci]
  end
  if ci > 0
    res.push [ai, bi, ci - 1]
  end
  return res
end

_x, _y, _z, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort
b = gets.split.map(&:to_i).sort
c = gets.split.map(&:to_i).sort

with_score = proc do |ai, bi, ci|
  [a[ai] + b[bi] + c[ci], [ai,bi,ci]]
end
queue = Heap.new
queue.push with_score.([a.size-1, b.size-1, c.size-1])
seen = {}

until k == 0
  _score, (ai, bi, ci) = queue.pop

  puts a[ai] + b[bi] + c[ci]
  k -= 1

  paths = degrade(ai,bi,ci).reject { |path| seen[path] }
  paths.each do |path|
    seen[path] = true
  end
  paths.each do |path|
    queue.push(with_score.(path))
  end
end

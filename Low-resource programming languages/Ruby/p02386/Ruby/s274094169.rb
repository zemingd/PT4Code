class Dice
  attr_reader :top, :front, :right, :left, :back, :bottom
  def initialize(pips)
    @top, @front, @right, @left, @back, @bottom = pips.split.map(&:to_i)
  end

  def rotate(dir)
    case dir
    when 'E'; tmp = @top; @top = @left; @left = @bottom; @bottom = @right; @right = tmp
    when 'W'; tmp = @top; @top = @right; @right = @bottom; @bottom = @left; @left = tmp
    when 'S'; tmp = @top; @top = @back; @back = @bottom; @bottom = @front; @front = tmp
    when 'N'; tmp = @top; @top = @front; @front = @bottom; @bottom = @back; @back = tmp
    when 'Z'; tmp = @front; @front = @right; @right = @back; @back = @left; @left = tmp
    end
  end

  def pips
    [
      {dir: 'top', pip: top},
      {dir: 'front', pip: front},
      {dir: 'right', pip: right},
      {dir: 'left', pip: left},
      {dir: 'back', pip: back},
      {dir: 'bottom', pip: bottom}
    ]
  end

  def same(d)
    _d = d.clone
    _d.pips.each do |item|
      if @top == item[:pip]
        case item[:dir]
        when 'top'
        when 'bottom'; _d.rotate('N'); _d.rotate('N')
        when 'front'; _d.rotate('N')
        when 'back'; _d.rotate('S')
        when 'left'; _d.rotate('E')
        when 'right'; _d.rotate('W')
        end

        4.times do
          if @bottom == _d.bottom &&
            @front == _d.front && @back == _d.back &&
            @left == _d.left && @right == _d.right
            return true
          end
          _d.rotate('Z')
        end
      end
    end
    false
  end
end

ds = []
n = gets.to_i
n.times {ds << Dice.new(gets)}
0.upto(n-2) do |i|
  j = i + 1
  while j <= n-1
    if ds[i].same(ds[j])
      puts 'No'
      exit
    end
    j += 1
  end
end

puts 'Yes'
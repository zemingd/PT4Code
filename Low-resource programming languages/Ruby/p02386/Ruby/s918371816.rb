class Dice
  attr_accessor :faces

  # |T F L|
  # |B U R|
  def initialize(faces)
    top, front, right, left, back, bottom = faces
    @faces = [[top, bottom], [front, back], [left, right]]
  end

  def move(commands)
    commands.split('').each do |com|
      case com.upcase.to_sym
      when :E
        faces[0], faces[2] = faces[2], faces[0].reverse
      when :W
        faces[0], faces[2] = faces[2].reverse, faces[0]
      when :N
        faces[0], faces[1] = faces[1], faces[0].reverse
      when :S
        faces[0], faces[1] = faces[1].reverse, faces[0]
      end
    end
  end

  def method_missing(face)
    if %i(top bottom front back left right).include? face
      {
        top:    faces[0][0],
        bottom: faces[0][1],
        front:  faces[1][0],
        back:   faces[1][1],
        left:   faces[2][0],
        right:  faces[2][1]
      }[face]
    else
      super
    end
  end

  def ==(other)
    commands = (["N"]*3 + ["E"]*3)
    commands.permutation(commands.size).to_a.uniq.each do |com|
      com.each do |c|
        move(c)
        return true if faces == other.faces
      end
    end
    false
  end

  def clone
    self.class.new([top, front, right, left, back, bottom])
  end

  def info
    p({ T: top, F: front, R: right, L: left, U: back, B: bottom })
  end
end

$stdin = DATA if $<.eof?

gets

dices = ARGF.each.map do |line|
  Dice.new(line.split.map(&:to_i))
end

match = dices.combination(2).any? do |da, db|
  da == db
end

puts(match ? "No" : "Yes")
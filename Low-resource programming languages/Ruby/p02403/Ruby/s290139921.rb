class Main
  def self.run
    rectangles = read_inputs
    puts rectangles.map(&:draw).join("\n")
    puts "\n"
  end

  private

  def self.read_inputs
    rectangles = []
    while true do
      h, w = gets.split(" ").map(&:to_i)
      case [h, w]
        when [0, 0] then break
        else rectangles << Rectangle.new(h, w)
      end
    end
    rectangles
  end
end

class Rectangle
  def initialize(height, width)
    @height, @width = height, width
  end

  def draw
    output = ""
    (1..@height).each {
      output << (1..@width).map{"#"}.join("") << "\n"
    }
    output
  end
end

Main.run
class Point
    attr_accessor :x, :y, :h
    def initialize(x, y, h)
        @x = x
        @y = y
        @h = h
    end

    def dist(p2)
        (self.x - p2.x).abs + (self.y - p2.y).abs
    end

    def to_s
        [@x, @y, @h].join(" ")
    end
end

N = gets.to_i
points = []
N.times do 
    points << Point.new(*gets.split.map(&:to_i))
end

(0..100).each do |cx|
    (0..100).each do |cy|
        c = Point.new(cx, cy, nil)
        match = true
        points.sort_by{|point| point.dist(c)}.each do |point|
            if !c.h
                c.h = point.dist(c) + point.h
            elsif c.h >= point.dist(c)
                match = false if c.h != point.dist(c) + point.h
            end
        end
        if match
            puts c
            exit
        end
    end
end
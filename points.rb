class Point
    attr_accessor :x, :y
    def initialize(x, y)
        @x = x
        @y = y
    end

    def to_s
        "pya.DPoint(#{@x}, #{y})"
    end
end

points = (File.read("points.txt")).lines(chomp:true).map do |line| 
    coords = line.split
    Point.new(Float(coords[0]).round, Float(coords[1]).round)
end
print "["
(0...points.length-1).each{|x| print points[x].to_s + ", "}
print points[points.length-1]
print "]\n"
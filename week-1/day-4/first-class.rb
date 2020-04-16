class Square
    def initialize(num)
        @num = num
    end
    def area
        return @num **2
    end
end
square_one = Square.new(10)
puts square_one.area # Logs: 100
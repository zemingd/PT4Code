class Editor
    def initialize(s)
        @instruction = s
        @output = ""
    end

    def type
        (0..@instruction.length - 1).each do |i|
            char = @instruction[i]
            if char == "B" 
                @output.slice!(-1) if @output.length > 0
            else
                @output += char
            end
        end
    end

    def display
        puts @output
    end
end

e = Editor.new(gets.chomp)
e.type
e.display

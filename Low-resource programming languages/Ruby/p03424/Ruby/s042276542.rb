# when initialize get stdin
class StdinGetter
    
    # initialize
    #
    # @param [Boolean] has_header
    def initialize(has_header=false)
        @stdin = initialized_stdin(readlines)
        @header = initialized_header(has_header)
        @body = initialized_body(has_header)
    end
    
    # getter for header
    #
    # @return [String] header
    def header()
        @header
    end
    
    # getter for body
    #
    # @return [Array] body
    def body()
        @body
    end
    
    # get splited body
    #
    # @params [String] splitter
    # @return [Array] body's array
    def splited_body(splitter)
        @body.map { |line| line.split(splitter) }
    end
    
    private
    # initializer for stdin
    #
    # @param [Array] lines
    # @return [Array] 
    def initialized_stdin(lines)
        lines.nil? ? [] : lines.map{ |line| line.chomp }
    end
    
    # initializer for stdin header
    #
    # @param [Boolean] has_header
    # @return [String]
    def initialized_header(has_header)
        has_header ? @stdin[0] : []
    end
    
    # initializer for stdin header
    #
    # @param [Boolean] has_header?
    # @return [Array]    
    def initialized_body(has_header)
        has_header ? @stdin.slice(1..-1) : @stdin
    end
        
end

# HinaArare Class
class HinaArare
    
    @@arare_colors = ["P", "W", "G", "Y"]
    @@count_messages = {
        3 => "Three",
        4 => "Four"
    }
    
    # initialize
    #
    # @params [Array] arares
    def initialize(arares)
        @arares = arares
    end
    
    # get arare valiation as number
    #
    # @return [Integer]
    def arare_valiation()
        @@arare_colors.select { |color| @arares.uniq.include?(color) }.length
    end
    
    # print how many valiation arare includes
    def print_arere_counts()
        if @@count_messages.has_key?(arare_valiation)
            puts @@count_messages[arare_valiation]
        else
            puts "Invalid Arare Select"
        end
    end
    
end
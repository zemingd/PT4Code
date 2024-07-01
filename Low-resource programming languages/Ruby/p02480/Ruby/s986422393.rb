require "readline"
class Scanner
	def self.get_arguments()
		Readline.readline("").split(" ")
	end
end

if __FILE__ == $0 
	args = Scanner.get_arguments
	x = args[0].to_i
	p x ** 3
end
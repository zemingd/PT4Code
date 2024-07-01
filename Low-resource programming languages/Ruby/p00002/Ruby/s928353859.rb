
class Array
	def keta
		self.map(&:to_i).reduce(:+).to_s.length
	end
end

while i=STDIN.gets.chomp.split(" ").keta do 
	puts I
end
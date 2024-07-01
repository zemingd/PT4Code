N = gets.to_i
tasks = []
N.times{
	tasks << gets.strip.split(/ /).collect(&:to_i)
}
def check(tasks)
	tasks = tasks.sort_by{|a, b| b}
	t = 0
	tasks.each{|a, b|
		t += a
		if t > b
			return false
		end
	}
	return true
end

if check(tasks)
	puts "Yes"
else
	puts "No"
end

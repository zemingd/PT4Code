#ruby
#PriorityQueue

class PriorityQueue < Array
	#attr :step

	def initialize
		@size = 0
		#@step = 0
	end

	def enqueue(e)
		#@step = 0
		self[@size] = e
		idx = @size
		while idx > 0
			if self[idx] > self[(idx-1)/2]
				self[(idx-1)/2],self[idx] = self[idx],self[(idx-1)/2]
				#@step += 1
			else
				break
			end
			idx = (idx-1)/2
		end
		@size += 1
	end

	def dequeue
		#@step = 0
		prio = self[0]
		self[0] = self[@size-1]
		@size -= 1
		idx = 0
		while true
			if idx*2+1 > @size-1
				break
			end
			if (idx+1)*2 > @size-1
				if self[idx] < self[idx*2+1]
					self[idx],self[idx*2+1] = self[idx*2+1],self[idx]
					idx = idx*2+1
					#@step += 1
				else
					break
				end
			else
				if self[idx*2+1] < self[(idx+1)*2]
					if self[idx] < self[(idx+1)*2]
						self[idx],self[(idx+1)*2] = self[(idx+1)*2],self[idx]
						idx = (idx+1)*2
						#@step += 1
					else
						break
					end
				else
					if self[idx] < self[idx*2+1]
						self[idx],self[idx*2+1] = self[idx*2+1],self[idx]
						idx = idx*2+1
						#@step += 1
					else
						break
					end
				end
			end
		end
		prio
	end
end

#abc141 D

n,m = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)

pq = PriorityQueue.new
total = 0

a.each do |e|
  pq.enqueue e
  total += e
end

m.times do
  x = pq.dequeue
  total -= (x/2)+(x%2)
  pq.enqueue x/2
end

p total
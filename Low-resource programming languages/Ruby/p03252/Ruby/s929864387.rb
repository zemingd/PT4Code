S, T = $<.read.split

firstOccurrenceInS = [nil]*('z'.ord-'a'.ord+1)
firstOccurrenceInT = [nil]*('z'.ord-'a'.ord+1)
puts S.size.times.all?{|i|
	s, t = S[i], T[i]
	foS, foT = (firstOccurrenceInS[s.ord]||=i), (firstOccurrenceInT[t.ord]||=i)
	foS == foT
} ? 'Yes' : 'No'

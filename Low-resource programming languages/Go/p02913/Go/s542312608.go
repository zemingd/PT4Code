package main

import "fmt"

func main() {
	var N int
	var S string
	fmt.Scan(&N)
	fmt.Scan(&S)
	Sbytes := []byte(S)

	result := 0
	for i := 0; i < N; i++ {
		Starget := Sbytes[i:]
		A := make([]int, len(Starget))
		i, j := 1, 0
		for i < len(Starget) {
			for i+j < len(Starget) && Starget[j] == Starget[i+j] {
				j++
			}

			A[i] = min(j, i)
			if j == 0 {
				i++
				continue
			}

			k := 1
			for i+k < len(Starget) && k+A[k] < j {
				A[i+k] = A[k]
				k++
			}
			i += k
			j -= k
		}

		maxA := max(A...)
		if maxA > result {
			result = maxA
		}
	}
	fmt.Println(result)
}

func max(s ...int) int {
	maxContent := s[0]
	for _, el := range s {
		if el > maxContent {
			maxContent = el
		}
	}
	return maxContent
}

func min(s ...int) int {
	minContent := s[0]
	for _, el := range s {
		if el < minContent {
			minContent = el
		}
	}
	return minContent
}
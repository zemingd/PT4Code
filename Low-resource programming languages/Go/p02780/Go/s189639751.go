package main

import "fmt"

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	s := make([]float64, n+1)
	s[0] = 0
	for i := 1; i < n+1; i++ {
		var p int
		fmt.Scan(&p)
		s[i] = s[i-1] + (float64(p)+1)/2.0
	}

	max := 0.0
	for i := k; i < n+1; i++ {
		tmp := s[i] - s[i-k]
		if max < tmp {
			max = tmp
		}
	}

	fmt.Println(max)
}

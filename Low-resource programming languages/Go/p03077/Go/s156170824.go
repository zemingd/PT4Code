package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	s := make([]int, 5)
	for i := range s {
		fmt.Scan(&s[i])
	}

	bottleNeck := 1000000000000001
	for i := range s {
		if s[i] < bottleNeck && s[i] < n {
			bottleNeck = s[i]
		}
	}

	if bottleNeck == 1000000000000001 {
		fmt.Println(5)
		return
	}

	fmt.Println((n+bottleNeck-1)/bottleNeck + 4)
}

package main

import "fmt"

func main() {
	var a, b int
	answer := 0
	fmt.Scan(&a, &b)

	cal := []int{}
	cal = append(cal, a + b)
	cal = append(cal, a - b)
	cal = append(cal, a * b)

	for cal = range cal {
		if cal.Atoi >= answer {
			answer = cal.Atoi
		}
	}

	return answer

}
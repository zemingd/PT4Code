package main

import "fmt"

func main() {
	l, r := 0, 0
	fmt.Scanf("%d %d", &l, &r)
	bigger := l * (l + 1)
	for i := l; i < r; i++ {
		for j := i + 1; j <= r; j++ {
			bigger = min(bigger, i*j%2019)
		}
	}
	fmt.Println(bigger)
}
func min(i, j int) int {
	if i <= j {
		return i
	} else {
		return j
	}
}

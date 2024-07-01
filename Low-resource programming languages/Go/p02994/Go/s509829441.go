package main

import (
	"fmt"
)

func main() {
	var n, l int
	fmt.Scan(&n, &l)
	mini := 400
	total := 0
	for i := 1; i <= n; i++ {
		azi := l + i - 1
		if abs(mini) > abs(azi) {
			mini = azi
		}
		total += azi
	}
	fmt.Println(total - mini)
}

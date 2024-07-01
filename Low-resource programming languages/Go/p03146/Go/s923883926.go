package main

import (
	"fmt"
)

func main() {
	var s int
	fmt.Scan(&s)

	M := 1000000
	a := make([]int, 1000000)
	a[1] = s
	for i := 2; i < 1000000; i++ {
		if a[i-1]%2 == 0 {
			a[i] = a[i-1] / 2
		} else {
			a[i] = 3*a[i-1] + 1
		}
		if a[i] == 4 {
			fmt.Println(i + 3)
			break
		}
	}
}

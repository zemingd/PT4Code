package main

import (
	"fmt"
)

func main() {
	var x int
	yen := 100
	fmt.Scanf("%d", &x)

	for i := 0; i <= x; i++ {
		if yen >= x {
			fmt.Println(i)
			break
		}
		yen += int(float64(yen) * 0.01)
	}
}
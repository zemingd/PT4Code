package main

import (
	"fmt"
	"os"
)

func main() {
	var k int
	fmt.Scanf("%d", &k)

	var l int
	if k%7 == 0 {
		l = 9 * k / 7
	} else {
		l = 9 * k
	}

	pow, rem := 1, 10%l
	for pow < l {
		if rem == 1 {
			fmt.Printf("%d\n", pow)
			os.Exit(0)
		} else {
			rem = (rem * 10) % l
			pow++
		}
	}

	fmt.Println("-1")
}

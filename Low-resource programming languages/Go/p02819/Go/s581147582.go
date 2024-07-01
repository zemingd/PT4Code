package main

import (
	"fmt"
	"os"
)

func main() {
	var x int
	fmt.Scanf("%d", &x)

	composit := [1000000]bool{}

	composit[0] = true
	composit[1] = true

	p := 2
	for p < 1000 {
		for m := 2; p*m < 1000000; m++ {
			composit[p*m] = true
		}
		p++
		for composit[p] {
			p++
		}
	}

	for i := x; i < 1000000; i++ {
		if !composit[i] {
			fmt.Printf("%d\n", i)
			os.Exit(0)
		}
	}
}

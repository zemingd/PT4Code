package main

import "fmt"

func main() {
	var x int
	fmt.Scanf("%d", &x)

	var depo int = 100
	var count int = 1

	for {
		interest := depo / 100
		depo = depo + interest

		if depo >= x {
			break
		}
		count++
	}
	fmt.Println(count)
}

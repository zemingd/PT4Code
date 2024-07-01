package main

import "fmt"

func main() {
	var a, b, c, x int
	fmt.Scan(&a, &b, &c, &x)

	count := 0
	for numA := 0; numA <= a && x-500*numA >= 0; numA++ {
		for numB := 0; numB <= b && x-500*numA-100*numB >= 0; numB++ {
			if (x-500*numA-100*numB)%50 == 0 &&
				(x-500*numA-100*numB) <= 50*c {
				count++
			}
		}
	}
	fmt.Println(count)
}

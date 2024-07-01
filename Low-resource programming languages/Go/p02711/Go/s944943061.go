package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	N100 := N / 100
	N10 := (N - N100*100) / 10
	N1 := (N - (N100 * 100) - (N10 * 10))

	if N100 == 7 || N10 == 7 || N1 == 7 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

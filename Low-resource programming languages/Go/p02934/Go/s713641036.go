package main

import "fmt"

func main() {
	var n int
	var ans float64

	fmt.Scan(&n)

	for i := 0; i < n; i++ {
		var a int
		fmt.Scan(&a)

		ans += 1.0 / float64(a)
	}

	fmt.Printf("%f\n", 1.0/ans)

}

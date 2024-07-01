package main

import "fmt"

func main() {
	var x int64

	fmt.Scan(&x)

	answer := int64(0)
	for t := int64(100); t < x; answer++ {
		t = int64(float64(t) * 1.01)
	}

	fmt.Println(answer)
}

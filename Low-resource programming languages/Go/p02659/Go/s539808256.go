package main

import "fmt"
import "math"

func main() {
	var a int
	var b float64
	fmt.Scan(&a, &b)

	fmt.Println((a * int(math.Round(b*100.0))) / 100)
}
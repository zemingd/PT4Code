package main


import (
	"fmt"
	"sort"
)

func main() {
	var a int
	var c float64
	var b []float64
	fmt.Scan(&a)
	for i := 0; i < a ; i++ {
		fmt.Scan(&c)
		b = append(b, c)
	}

	sort.Float64s(b)
	var d = b[0]
	for i := 1; i < a; i++ {
		d = (d + b[i]) / 2
	}
	fmt.Println(d)
}
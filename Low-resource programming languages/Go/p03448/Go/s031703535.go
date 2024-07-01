package main


import (
	"fmt"
)

func main() {
	var a,b,c,d int
	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&c)
	fmt.Scan(&d)

	count := 0
	for i := 0; i <= a; i++ {
		for j := 0; j <= b; j++ {
			for k := 0; k <= c; k++ {
				total := 500 * i + 100 * j + 50 * k
				if total == d {
					count++
				}
			}
		}
	}

	fmt.Println(count)
}
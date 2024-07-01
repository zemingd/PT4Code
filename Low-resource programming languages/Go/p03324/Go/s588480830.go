package main

import "fmt"

func main() {
	var D, N int
	fmt.Scan(&D, &N)
	c := 0
	for i := 1; true; i++ {
		d := 0
		j := i
		for j > 0 && j%100 == 0 {
			j /= 100
			d++
		}
		if d == D {
			c++
		}
		if c == N {
			fmt.Println(i)
			return
		}
	}
}

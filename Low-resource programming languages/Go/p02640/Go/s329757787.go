package main

import (
	"fmt"
	"os"
)

const turtle = 4
const crane = 2

func main() {

	var x, y int

	fmt.Scan(&x, &y)

	if y%2 == 1 {
		fmt.Println("No")
		os.Exit(0)
	}

	i := calc(x, y)
	if i {
		fmt.Println("yes")
	} else {
		fmt.Println("No")
	}

}
func calc(x, y int) bool {

	a := x
	b := 0
	c := 0

	for {
		if b > x {
			return false
		}
		c = a*turtle + b*crane
		//fmt.Printf("kame: %d, turu: %d, ashi: %d\n", a, b, c)
		if c == y {
			return true
		} else {
			a--
			b++
		}
	}
}

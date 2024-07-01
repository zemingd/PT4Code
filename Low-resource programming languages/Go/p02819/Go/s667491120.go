package main

import "fmt"

func main() {
	var x int
	fmt.Scan(&x)

	a := true
	xx := x
	for {
		if xx%2 == 0 {
			a = false
		}
		for b := 3; b <= xx/2; b+=2 {
			if xx%b == 0 {
				a = false
			}
		}
		if a == true {
			fmt.Println(xx)
			return
		}
		xx++
	}
}
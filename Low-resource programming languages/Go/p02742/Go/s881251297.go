package main

import(
	"fmt"
)

// func main() {
// 	var a, b, c int
// 	fmt.Scan(&a, &b, &c)
// 	if 4*a*b < (c*c + a*a + b*b - 2*c*a - 2*c*b + 2*a*b) {
// 		fmt.Print("Yes")
// 	} else {
// 		fmt.Print("No")
// 	}
// }

func main() {
	var h, f int
	fmt.Scan(&h, &f)
	var r int = 0
	if h % 2 == 0 {
		for i := 0; i < f; i++ {
			r += h / 2
		}
	} else {
		if f % 2 == 0{
			for i := 0; i < f / 2; i++ {
				r += h
			}
		} else {
			for i := 0; i < f / 2; i++ {
				r += h
			}
			r += (h / 2) + 1
		}
	}
	fmt.Print(r)
}
package main

import "fmt"

func main() {
	var a,b,c,d int
	fmt.Scanf("%d %d %d %d", &a, &b, &c, &d)
	if a >= 0 && c >= 0 || a >= 0 && d >= 0 || c >= 0 && b >= 0 {
		fmt.Printf("%d", b*d)
	} else if a >= 0 && d < 0 {
		fmt.Printf("%d", a*d)
	} else if b < 0 && c >= 0 {
		fmt.Printf("%d", c*b)
	} else if b < 0 && d < 0 {
		fmt.Printf("%d", a*b)
	} else {
		if a*c > b*d {
			fmt.Printf("%d", a*c)
		}
		fmt.Printf("%d", b*d)
	}
}

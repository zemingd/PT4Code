package main

import "fmt"

func main() {
	var s string
	fmt.Scanln(&s)

	zero := 0
	one := 0

	for _, c := range s {
		if c == '0' {
			zero++
		} else if c == '1' {
			one++
		}
	}

	if zero > one {
		fmt.Println(one * 2)
	} else {
		fmt.Println(zero * 2)
	}
}

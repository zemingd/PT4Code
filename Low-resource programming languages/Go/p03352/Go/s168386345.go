package main

import "fmt"

func pow(b, p int) int {
	if p == 0 {
		return 1
	} else {
		return b * pow(b, p-1)
	}
}

func main() {
	var x int
	fmt.Scan(&x)

	max := 1
	for b := 2; b <= x; b++ {
		for p := 2; ; p++ {
			v := pow(b, p)
			if v > x {
				break
			}
			if v > max {
				max = v
			}
		}
	}
	fmt.Println(max)
}

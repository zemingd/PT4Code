package main

import "fmt"

func main() {
	var r, D, x2000 int
	fmt.Scan(&r, &D, &x2000)

	res := x2000
	for y := 2001; y <= 2010; y++ {
		res = r*res - D
		fmt.Println(res)
	}

}

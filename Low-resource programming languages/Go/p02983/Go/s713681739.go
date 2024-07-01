package main

import "fmt"

func main()  {
	var l, r int64
	fmt.Scan(&l, &r)
	lMod := l%2019
	sub := r-l
	if 2019 - lMod <= sub {
		fmt.Println(0)
	} else {
		fmt.Println(lMod*(lMod+1))
	}
}
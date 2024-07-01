package main

import (
	"fmt"
	"strconv"
)

func main() {
	var s, t, u int
	fmt.Scan(&s)
	fmt.Scan(&t)
	fmt.Scan(&u)

	res1 := s - u
	if res1 < 0 {
		res2 := t + res1
		if res2 < 0 {
			fmt.Println("0 0")
		} else {
			fmt.Println(strconv.Itoa(0) + " " + strconv.Itoa(res2))
		}
	} else {
		fmt.Println(strconv.Itoa(res1) + " " + strconv.Itoa(t))
	}
}

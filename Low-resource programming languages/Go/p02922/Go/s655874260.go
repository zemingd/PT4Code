package main

import "fmt"

func main() {
	var A, B, r int
	fmt.Scan(&A, &B)
	w := B - A
	if w > 0 {
		r++
	} else {
		fmt.Println(1)
		return
	}
	r += w / A
	if r%A > 0 {
		r++
	}
	fmt.Println(r)
}

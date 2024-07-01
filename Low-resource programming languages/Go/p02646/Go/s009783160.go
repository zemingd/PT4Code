package main

import "fmt"

func main() {
	var a, v, b, w, t int
	fmt.Scan(&a, &v, &b, &w, &t)

	vt := v * t
	wt := w * t

	if vt >= wt+(b-a) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

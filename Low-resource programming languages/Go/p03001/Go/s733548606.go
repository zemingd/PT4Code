package main

import "fmt"

func main() {
	W := oneInt()
	H := oneInt()
	x := oneInt()
	y := oneInt()

	var jud int

	v1 := (W - x) * H
	v2 := (H - y) * W

	if v1 == v2 {
		jud = 1
	}

	var vol int
	if v1 > v2 {
		fmt.Print("%v %v", v1, jud)
		return
	} else {
		fmt.Print("%v %v", v2, jud)
	}

}

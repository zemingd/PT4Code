package main

import (
	"fmt"
)

func main() {
	var n, d int
	fmt.Scanf("%d", &n)
	slice := []int{}
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &d)
		slice = append(slice, d)
	}

	total := 0
	fm := 0
	l := len(slice) - 1
	for i := 0; i < l; i++ {
		t1 := slice[i] + fm
		t2 := slice[i+1]
		if t1 > t2 {
			fm = t1 - t2
			total = total + fm
		} else {
			fm = 0
		}
	}
	fmt.Println(total)

}

package main

import "fmt"

func main() {
	var a, b, c, d int
	fmt.Scan(&a, &b, &c, &d)
	ac := a * c
	ad := a * d
	bc := b * c
	bd := b * d
	s := []int{ad, bc, bd}
	tmp := ac
	for _, v := range s {
		if tmp < v {
			tmp = v
		}
	}
	fmt.Println(tmp)
}
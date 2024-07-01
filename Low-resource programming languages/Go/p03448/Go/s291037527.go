package main

import "fmt"

func main() {

	var a int
	var b int
	var c int
	var x int

	var cnt int = 0

	fmt.Scan(&a, &b, &c, &x)
	for indexA := 0; indexA <= a; indexA++ {
		for indexB := 0; indexB <= b; indexB++ {
			for indexC := 0; indexC <= c; indexC++ {
				if indexA*500+indexB*100+indexC*50 == x {
					cnt++
				}
			}
		}
	}
	fmt.Println(cnt)
}

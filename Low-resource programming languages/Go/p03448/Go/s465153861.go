package main

import "fmt"

func main() {
	var a, b, c, x int
	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&c)
	fmt.Scan(&x)
	cnt:=0
	for i:= 0; i<= a; i++ {
		for j:= 0; j<=b; j++ {
			for k:= 0; k<=c; k++ {
				s:= 500*i + 100*j + 50*k
				if x == s {
					cnt++
				}
			}
		}
	}
	fmt.Println(cnt)
}

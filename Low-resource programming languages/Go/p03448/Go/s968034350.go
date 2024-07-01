package main

import "fmt"

func main() {
	var A, B, C, X int
	a, b, c := 500, 100, 50
	count := 0
	fmt.Scan(&A, &B, &C, &X)

	for _c:= 0; _c <= C; _c ++ {
		for _b:= 0; _b <= B; _b++ {
			for _a:=0; _a <= A; _a++ {
				if X == a*_a + b*_b + c*_c {
					count ++
				}
			}
		}
	}
	fmt.Println(count)
}
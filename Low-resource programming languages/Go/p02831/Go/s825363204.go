package main

import "fmt"

func main() {
	var A, B int
	fmt.Scan(&A, &B)
	fmt.Println(A * B / calcGCD(A, B))
}

func calcGCD(a, b int) int {
	if b == 0 {
		return a
	} else {
		return calcGCD(b, a%b)
	}
}

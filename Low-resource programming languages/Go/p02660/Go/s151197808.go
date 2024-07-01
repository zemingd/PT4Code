package main

import "fmt"

func main() {
	var N int
	fmt.Scanf("%d", &N)
	var out int
	out = 0
	for i := 2; N != 1; i++ {
		if N%i == 0 {
			N = N / i
			out++
		}
	}
	fmt.Println(out)
}

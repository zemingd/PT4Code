package main

import "fmt"

func main() {
	var A, B int
	fmt.Scan(&A, &B)

	am := make(map[int]int)
	bm := make(map[int]int)

	a := A
	for i := 2; i*i <= A; i++ {
		if a%i != 0 {
			continue
		}
		for a%i == 0 {
			am[i]++
			a /= i
		}
	}
	if a != 1 {
		am[a]++
	}
	b := B
	for i := 2; i*i <= B; i++ {
		if b%i != 0 {
			continue
		}
		for b%i == 0 {
			bm[i]++
			b /= i
		}
	}
	if b != 1 {
		bm[b]++
	}
	count := 1
	for k := range am {
		if _, ok := bm[k]; ok {
			count++
		}
	}
	fmt.Println(count)
}

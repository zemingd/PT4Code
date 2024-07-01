package main

import (
	"fmt"
)

func main() {
	N := 0
	M := 0
	fmt.Scan(&N, &M)
	// fmt.Printf("N, %v\n", N)
	// fmt.Printf("M, %v\n", M)

	Lmin := 0
	Rmax := 100001

	for i := 0; i < M; i++ {
		L, R := 0, 0
		fmt.Scan(&L, &R)
		// fmt.Printf("L, %v\n", L)
		// fmt.Printf("R, %v\n", R)
		if L > Lmin {
			Lmin = L
		}

		if R < Rmax {
			Rmax = R
		}
	}

	// fmt.Printf("Lmin, %v\n", Lmin)
	// fmt.Printf("Rmax, %v\n", Rmax)

	if N < Rmax {
		t := (N - Lmin) + 1
		// fmt.Printf("total long, %v\n", t)
		if t > 100000 {
			// fmt.Printf("total1, %v\n", 10000)
			fmt.Println(100000)
		} else {
			fmt.Println((N - Lmin) + 1)
			// fmt.Printf("total1, %v\n", (N - Lmin) + 1)
		}

	} else {
		t := (Rmax - Lmin) + 1
		// fmt.Printf("total2 long, %v\n", t)
		 if t > 100000 {
			// fmt.Printf("total2_1, %v\n", 100000)
			fmt.Println(100000)
		} else {
			// fmt.Printf("total2_2, %v\n", (Rmax - Lmin) + 1)
			fmt.Println((Rmax - Lmin) + 1)
		}
	}
}

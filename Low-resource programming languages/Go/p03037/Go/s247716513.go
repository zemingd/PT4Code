package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextInts() (int, int) {
	sc.Scan()
	t := strings.Split(sc.Text(), " ")
	i1, e := strconv.Atoi(t[0])
	if e != nil {
		panic(e)
	}

	i2, e := strconv.Atoi(t[1])
	if e != nil {
		panic(e)
	}
	return i1, i2
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)

	N := nextInt()
	M := nextInt()
	// fmt.Printf("N, %v\n", N)
	// fmt.Printf("M, %v\n", M)

	sc = bufio.NewScanner(os.Stdin)

	Lmin := 0
	Rmax := 10001

	for i := 0; i < M; i++ {
		L, R := nextInts()
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
		t := N - Lmin
		// fmt.Printf("total long, %v\n", t)
		if t > 10000 {
			// fmt.Printf("total1, %v\n", 10000)
			fmt.Println(10000)
		} else {
			fmt.Println((N - Lmin) + 1)
			// fmt.Printf("total1, %v\n", (N - Lmin) + 1)
		}

	} else {
		t := (Rmax - Lmin) + 1
		// fmt.Printf("total2 long, %v\n", t)
		 if t > 10000 {
			// fmt.Printf("total2_1, %v\n", 100000)
			fmt.Println(10000)
		} else {
			// fmt.Printf("total2_2, %v\n", (Rmax - Lmin) + 1)
			fmt.Println((Rmax - Lmin) + 1)
		}

	}
}

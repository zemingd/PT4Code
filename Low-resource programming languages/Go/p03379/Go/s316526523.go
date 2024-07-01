package main

import (
	"fmt"
	"sort"
)

func main() {
	var N int
	fmt.Scan(&N)
	all := make([]int, N)
	preall := make([]int, N)
	ReadN(all, 0, N)
	copy(preall[:], all)
	sort.Ints(all)
	tn := N / 2
	s := all[tn]
	m := all[N-1-tn]

	for i := 0; i < len(preall); i++ {
		if s > preall[i] {
			fmt.Println(s)
		} else {
			fmt.Println(m)
		}
	}
}

func ReadN(all []int, i, n int) {
	if n == 0 {
		return
	}
	if m, err := Scan(&all[i]); m != 1 {
		panic(err)
	}
	ReadN(all, i+1, n-1)

}

func Scan(a *int) (int, error) {
	return fmt.Scan(a)
}

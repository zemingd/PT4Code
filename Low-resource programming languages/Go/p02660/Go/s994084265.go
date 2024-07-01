package main

import (
	"fmt"
)

func PrimeFactorization(n int) (pfs map[int]int) {
	pfs = make(map[int]int)

	for n%2 == 0 {
		if _, ok := pfs[2]; ok {
			pfs[2]++
		} else {
			pfs[2] = 1
		}
		n = n / 2
	}

	for i := 3; i*i <= n; i = i + 2 {
		for n%i == 0 {
			if _, ok := pfs[i]; ok {
				pfs[i]++
			} else {
				pfs[i] = 1
			}
			n = n / i
		}
	}
	if n > 2 {
		pfs[n] = 1
	}

	return
}

func main() {
	var n int
	fmt.Scanf("%d", &n)
	pfs := PrimeFactorization(n)

	cnt := 0
	for _, exp := range pfs {
		d := 1
		for d <= exp {
			exp -= d
			cnt++
			d++
		}
	}

	fmt.Println(cnt)
}
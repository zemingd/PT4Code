package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	var n, k int
	fmt.Scanf("%d %d", &n, &k)
	s := nextLine()

	a := []int{}
	f := '1'
	count := 0
	for _, k := range s {
		if k == f {
			count += 1
		} else {
			a = append(a, count)
			count = 1
			if f == '1' {
				f = '0'
			} else {
				f = '1'
			}
		}
	}

	a = append(a, count)
	if f == '0' {
		a = append(a, 0)
	}

	max := a[0]
	for i := 1; i <= (len(a)+1) / 2; i += 2{
		sum := 0
		nj := i + 1 + 2 * (k - 1)
		if (len(a) - 1) < nj {
			nj = len(a) - 1
		}
		for j := i - 1; j <= nj; j ++ {
			sum += a[j]
		}

		if sum >= max {
			max = sum
		}
	}

	fmt.Printf("%d", max)
}

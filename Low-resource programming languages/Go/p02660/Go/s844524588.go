package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
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

func primeFactors(n int) []int {
	factors := make([]int, 0)
	i := 2
	for i*i <= n {
		r := n % i
		if r != 0 {
			i++
		} else if r == 0 {
			n /= i
			factors = append(factors, i)
		}
	}
	if n > 1 {
		factors = append(factors, n)
	}
	return factors
}

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	f := primeFactors(n)
	i := 0
	z := 0
	ok := false
	zcount := 0
	ncount := 0
	for i < len(f) {
		if z != f[i] {
			zcount = 0
		}
		z = f[i]
		if zcount == 0 {
			ok = true
		} else {
			if i+zcount < len(f) {
				for j := 1; j <= zcount; j++ {
					if z != f[i+j] {
						ok = false
						break
					}
					ok = true
				}
			} else {
				ok = false
			}
		}
		if ok {
			zcount++
			ncount++
		}
		i += zcount
	}
	fmt.Println(ncount)
}

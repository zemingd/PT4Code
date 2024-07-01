// Sum of product of pairs

package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func calcProduct(a []int64) (int64, int64) {
	const M = 1000000007
	var s, p int64
	s = 0
	p = 1
	for i := 0; i < len(a)-1; i++ {
		for j := i + 1; j < len(a); j++ {
			p = a[i] * a[j]
			p = p % M
			s += p
			if M < s {
				s = s % M
			}
		}
	}
	return s, p
}

func nextInt(sc *bufio.Scanner) (int, error) {
	sc.Scan()
	t := sc.Text()
	return strconv.Atoi(t)
}

func nextInt64(sc *bufio.Scanner) (int64, error) {
	sc.Scan()
	t := sc.Text()
	return strconv.ParseInt(t, 10, 64)
}

func nextString(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	n, _ := nextInt(sc)

	a := make([]int64, n)
	for i := 0; i < n; i++ {
		aa, _ := nextInt64(sc)
		a[i] = aa
	}

	r, _ := calcProduct(a)
	fmt.Println(r)
}

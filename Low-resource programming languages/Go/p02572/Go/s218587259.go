// Sum of product of pairs

package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func calcProduct(a []int64) int64 {
	const M = 1000000007
	var s int64
	s = 0
	for i := 0; i < len(a)-1; i++ {
		var ps int64
		ps = 0
		for j := i + 1; j < len(a); j++ {
			ps += a[j]
			if M < ps {
				ps -= M
			}
		}
		s += a[i] * ps
		s %= M
	}
	return s
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

	r := calcProduct(a)
	fmt.Println(r)
}

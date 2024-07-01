package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var n, m int
	fmt.Scan(&n)
	fmt.Scan(&m)

	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	a := make([]int, n, n)
	l := make([]int, n, n)

	for i := 0; i < n; i++ {
		sc.Scan()
		b, _ := strconv.Atoi(sc.Text())

		j := 1
		for b&j == 0 {
			j <<= 1
		}
		l[i] = j
		a[i] = b
	}

	answer := -1
	for i := 0; i < n; i++ {
		if l[i] == 1 || l[i] != l[0] {
			answer = 0
		}
	}

	if answer != 0 {
		semilcm := int64(a[0]) / 2
		for i := 1; i < n; i++ {
			semilcm = lcm(semilcm, int64(a[i])) / 2
			if semilcm > int64(m) {
				answer = 0
				break
			}
		}
		answer = (m/int(semilcm) + 1) / 2
	}

	fmt.Println(answer)
}

func gcd(n1 int64, n2 int64) int64 {
	if n1%n2 == 0 {
		return n2
	}
	return gcd(n2, n1%n2)
}

func lcm(n1 int64, n2 int64) int64 {
	return n1 / gcd(n1, n2) * n2
}

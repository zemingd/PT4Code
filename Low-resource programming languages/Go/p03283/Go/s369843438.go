package main

import (
	"bufio"
	"os"
	"strconv"
	"fmt"
)

type Scanner struct {
	innerScanner *bufio.Scanner
}

func NewScanner() *Scanner {
	sc := new(Scanner)
	innerScanner := bufio.NewScanner(os.Stdin)
	innerScanner.Split(bufio.ScanWords)
	sc.innerScanner = innerScanner
	return sc
}

func (sc Scanner) scan() {
	sc.innerScanner.Scan()
}

func (sc Scanner) next() string {
	sc.scan()
	return sc.innerScanner.Text()
}

func (sc Scanner) nextInt() int {
	i, _ := strconv.Atoi(sc.next())
	return i
}

func (sc Scanner) nextFloat() float64 {
	f, _ := strconv.ParseFloat(sc.next(), 64)
	return f
}

func main() {
	sc := NewScanner()
	n := sc.nextInt()
	m := sc.nextInt()
	q := sc.nextInt()
	var t [501][501]int
	var sum [501][501]int

	for i := 0; i < m; i++ {
		l := sc.nextInt()
		r := sc.nextInt()
		t[l][r]++
	}

	for i := 1; i <= n; i++ {
		for j := 1; j <= n; j++ {
			sum[i][j] = sum[i][j - 1] + t[i][j]
		}
	}

	for i := 0; i < q; i++ {
		l := sc.nextInt()
		r := sc.nextInt()
		ans := 0
		for j := l; j <= r; j++ {
			ans += sum[j][r] - sum[j][l - 1]
		}
		fmt.Println(ans)
	}
}
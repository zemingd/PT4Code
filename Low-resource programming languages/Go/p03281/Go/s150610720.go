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
	return sc.innerScanner.Text()
}

func (sc Scanner) nextInt() int {
	sc.scan()
	i, _ := strconv.Atoi(sc.next())
	return i
}

func (sc Scanner) nextFloat() float64 {
	sc.scan()
	f, _ := strconv.ParseFloat(sc.next(), 64)
	return f
}

func main() {
	sc := NewScanner()
	n := sc.nextInt()
	ans := 0
	for i := 1; i <= n; i += 2 {
		count := 0
		for j := 1; j <= n; j += 2 {
			if i % j == 0 {
				count++
			}
		}
		if count == 8 {
			ans++
		}
	}
	fmt.Println(ans)
}
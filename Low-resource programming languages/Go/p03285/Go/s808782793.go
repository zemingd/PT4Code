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
	for i := 0; i <= 25; i++ {
		for j := 0; j <= 15; j++ {
			v := i * 4 + j * 7
			if n == v {
				fmt.Println("Yes")
				return
			}
		}
	}
	fmt.Println("No")
}

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
	s := sc.next()
	k := sc.nextInt() - 1
	for i := 0; i < len(s); i++ {
		if s[i] == '1' {
			if i == k {
				fmt.Println(string(s[i]))
				break
			}
		} else {
			fmt.Println(string(s[i]))
			break
		}
	}
}
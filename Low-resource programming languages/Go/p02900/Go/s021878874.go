package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

func main() {
	fmt.Println(resolve(parseProblem(os.Stdin)))
}

func parseProblem(r io.Reader) (int, int) {
	const (
		initialBufSize = 100000
		maxBufSize     = 1000000
	)
	buf := make([]byte, initialBufSize)

	sc := bufio.NewScanner(r)
	sc.Buffer(buf, maxBufSize)
	sc.Split(bufio.ScanWords) // bufio.ScanLines
	return scanInt(sc), scanInt(sc)
}

func resolve(a, b int) int {
	g := gcd(a, b)
	t := primeFactories(g)
	return len(t) + 1
}

func isPrime(n int) bool {
	for i := 2; i*i <= n; i++ {
		if n%i == 0 {
			return false
		}
	}
	return true
}

func eratosthenes(n int) []bool {
	t := make([]bool, n)
	for i := 2; i < len(t); i++ {
		t[i] = true
	}
	for i := 2; i < len(t); i++ {
		if !t[i] {
			continue
		}
		for j := 2; j*i < len(t); j++ {
			t[j*i] = false
		}
	}
	return t
}

func primes(n int) chan int {
	ch := make(chan int)
	go func() {
		t := eratosthenes(n)
		for i := 2; i < len(t); i++ {
			if !t[i] {
				continue
			}
			ch <- i
		}
		close(ch)
	}()
	return ch
}

func primeFactories(n int) (terms map[int]int) {
	terms = map[int]int{}
	num := n
	for f := 2; f*f < n; f++ {
		if num%f != 0 {
			continue
		}
		ex := 0
		for num%f == 0 {
			num /= f
			ex++
		}
		terms[f] = ex
	}
	if num > 1 {
		terms[num] = 1
	}
	return
}

func gcd(a, b int) int {
	for b > 0 {
		t := a / b
		a, b = b, a-t*b
	}
	return a
}

// snip-scan-funcs
func scanInt(sc *bufio.Scanner) int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return int(i)
}
func scanString(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}

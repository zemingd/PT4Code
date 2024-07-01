package main

import (
	"bufio"
	"fmt"
	"io"
	"math"
	"os"
	"strconv"
)

func main() {
	fmt.Println(resolve(parseProblem(os.Stdin)))
}

func parseProblem(r io.Reader) int {
	const (
		initialBufSize = 100000
		maxBufSize     = 1000000
	)
	buf := make([]byte, initialBufSize)

	sc := bufio.NewScanner(r)
	sc.Buffer(buf, maxBufSize)
	sc.Split(bufio.ScanWords) // bufio.ScanLines
	n := scanInt(sc)
	return n
}

func resolve(n int) int {
	if n < 2 {
		return 0
	}
	if isPrime(n) {
		return 1
	}
	terms := map[int]int{}
	max := 0
	for p := range primes(n) {
		// fmt.Println(p)
		terms[p] = numP(n, p)
		if max < terms[p] {
			max = terms[p]
		}
	}
	// pp.Println(terms)
	// initSeparationNum(max)
	initPow()
	result := 0
	for k, iN := range terms {
		if iN == 0 {
			continue
		}
		for j := 1; j <= iN; j++ {
			// pp.Println(n)
			d := pow(k, j)
			if n%d != 0 {
				break
			}
			n /= d
			result++
		}
	}
	return result
}

var powTable map[int]map[int]int

func initPow() {
	powTable = map[int]map[int]int{}
}

func pow(n, i int) int {
	v, ok := powTable[n]
	if ok {
		if r, ok := v[i]; ok {
			return r
		}
	} else {
		powTable[n] = map[int]int{}
	}

	if i == 1 {
		return n
	}
	if i%2 == 0 {
		r := pow(n, i/2) * pow(n, i/2)
		powTable[n][i] = r
		return r
	}
	r := pow(n, i/2) * pow(n, i/2) * n
	powTable[n][i] = r
	return r
}

func isPrime(n int) bool {
	max := int(math.Sqrt(float64(n)))
	for i := 2; i <= max+1; i++ {
		if n%i == 0 {
			return false
		}
	}
	return true
}

func numP(n, p int) (i int) {
	for n > 0 {
		if n%p != 0 {
			break
		}
		i++
		n = n / p
	}
	return i
}

func primes(n int) chan int {
	// max := int(math.Sqrt(float64(n))) + 1
	isPrime := make([]bool, n+1)
	for i := 2; i < len(isPrime); i++ {
		isPrime[i] = true
	}

	for i := 2; i < len(isPrime); i++ {
		if !isPrime[i] {
			continue
		}
		for j := 2; j*i < len(isPrime); j++ {
			isPrime[j*i] = false
		}
	}

	ch := make(chan int)
	go func() {
		for i := 2; i < len(isPrime); i++ {
			if !isPrime[i] {
				continue
			}
			ch <- i
		}
		close(ch)
	}()
	return ch
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

package main

import (
	"bufio"
	"errors"
	"fmt"
	"io"
	"math"
	"os"
	"sort"
	"strconv"
)

func main() {
	sc := NewScanner(os.Stdin)
	n, _ := sc.NextInt()
	ans := solve(n)
	fmt.Println(ans)
}

func solve(n int) (ans int) {
	divs := []int{}
	primes := createPrimeList(n)
	divs = append(divs, primes...)
	for i := range primes {
		pows := createPowList(primes[i], n)
		divs = append(divs, pows...)
	}
	sort.Slice(divs, func(i, j int) bool { return divs[i] < divs[j] })
	return countDivisions(n, divs)
}

func createPrimeList(n int) (primes []int) {
	primes = []int{}
	sqrtN := int(math.Sqrt(float64(n)))
	isPrime := make([]bool, sqrtN+1)
	for i := range isPrime {
		isPrime[i] = true
	}
	isPrime[0], isPrime[1] = false, false
	for i := range isPrime {
		if !isPrime[i] {
			continue
		}
		primes = append(primes, i)
		for j := i + 1; j < len(isPrime); j++ {
			if j%i == 0 {
				isPrime[j] = false
			}
		}
	}
	if n <= 1 {
		return primes
	}
	isPrimeN := true
	for _, p := range primes {
		if n%p == 0 {
			isPrimeN = false
			break
		}
	}
	if isPrimeN {
		primes = append(primes, n)
	}
	return primes
}

func createPowList(p, n int) (pows []int) {
	pows = []int{}
	sqrtN := int(math.Sqrt(float64(n)))
	for i := p * p; i <= sqrtN; i *= p {
		pows = append(pows, i)
	}
	return pows
}

func countDivisions(n int, divs []int) (count int) {
	for _, div := range divs {
		if n%div == 0 {
			n /= div
			count++
		}
	}
	return count
}

// Scanner is a wrapper of bufio.Scanner which is customized for competitive programing.
type Scanner struct {
	bufio.Scanner
}

// NewScanner is a constructor for Scanner.
func NewScanner(r io.Reader) *Scanner {
	sc := Scanner{*bufio.NewScanner(r)}
	sc.Buffer([]byte{}, math.MaxInt64)
	sc.Split(bufio.ScanWords)
	return &sc
}

// NextInt reads a integer from io stream.
func (sc *Scanner) NextInt() (int, error) {
	if !sc.Scan() {
		return -1, errors.New("failed to scan")
	}
	return strconv.Atoi(sc.Text())
}

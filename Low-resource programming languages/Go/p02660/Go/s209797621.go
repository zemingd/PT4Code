package main

import (
	"bufio"
	"fmt"
	"io"
	"log"
	"math"
	"os"
	"strconv"
)

func findPrimes(n int) []int {
	notPrimes := make([]bool, n+1)
	notPrimes[0], notPrimes[1] = true, true
	for i := 2; i <= n; i++ {
		if notPrimes[i] {
			continue
		}
		for j := i * 2; j <= n; j += i {
			notPrimes[j] = true
		}
	}
	primes := make([]int, 0, n)
	for i := range notPrimes {
		if !notPrimes[i] {
			primes = append(primes, i)
		}
	}
	return primes
}

func main() {
	n := readInt()
	if n == 1 {
		fmt.Println(0)
		return
	}

	m := int(math.Sqrt(float64(n)))
	p := findPrimes(m)

	pFactors := make(map[int]int)
	for _, prime := range p {
		if prime > n {
			break
		}
		for {
			if n%prime != 0 {
				break
			}
			n /= prime
			pFactors[prime]++
		}
	}
	if n > 1 {
		pFactors[n]++
	}

	ans := 0
	for _, v := range pFactors {
		cnt := 1
		for {
			if v < cnt {
				break
			}
			v -= cnt
			cnt++
			ans++
		}
	}

	fmt.Println(ans)
}

var (
	readString func() string
	readBytes  func() []byte
)

func init() {
	log.SetFlags(log.Lshortfile)
	readString, readBytes = newReadString(os.Stdin)
}

func newReadString(ior io.Reader) (func() string, func() []byte) {
	r := bufio.NewScanner(ior)
	r.Buffer(make([]byte, 1024), int(1e+11))
	r.Split(bufio.ScanWords)

	f1 := func() string {
		if !r.Scan() {
			panic("Scan failed")
		}
		return r.Text()
	}
	f2 := func() []byte {
		if !r.Scan() {
			panic("Scan failed")
		}
		return r.Bytes()
	}
	return f1, f2
}

func readInt64() int64 {
	i, err := strconv.ParseInt(readString(), 10, 64)
	if err != nil {
		panic(err.Error())
	}
	return i
}

func readInt() int {
	return int(readInt64())
}

func readFloat64() float64 {
	f, err := strconv.ParseFloat(readString(), 64)
	if err != nil {
		panic(err.Error())
	}
	return f
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

func sum(a []int) int {
	var ret int
	for i := range a {
		ret += a[i]
	}
	return ret
}

func sumFloat64(a []float64) float64 {
	var ret float64
	for i := range a {
		ret += a[i]
	}
	return ret
}

func gcd(m, n int) int {
	for m%n != 0 {
		m, n = n, m%n
	}
	return n
}

func lcm(m, n int) int {
	return m / gcd(m, n) * n
}

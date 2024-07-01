package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
)

const (
	initialBufSize = 10000
	maxBufSize     = 10000000
)

var (
	sc = func() *bufio.Scanner {
		sc := bufio.NewScanner(os.Stdin)
		buf := make([]byte, initialBufSize)
		sc.Buffer(buf, maxBufSize)
		sc.Split(bufio.ScanWords)
		return sc
	}()
)

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextFloat() float64 {
	sc.Scan()
	f, e := strconv.ParseFloat(sc.Text(), 64)
	if e != nil {
		panic(e)
	}
	return f
}

func powMod(a, n int) int {
	if n < 0 {
		log.Fatal("pow error")
	}
	if n == 0 {
		return 1
	}
	if n%2 == 0 {
		d := powMod(a, n/2) % mod
		return d * d % mod
	}
	return a * powMod(a, n-1) % mod
}

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

type key struct {
	Positive bool
	First    int
	Second   int
}

func toPositive(a, b int) (int, int, bool) {
	if a == 0 && b == 0 {
		return a, b, true
	}
	if a == 0 {
		if b > 0 {
			return a, b, true
		}
		return a, -b, false
	}

	if b == 0 {
		if a > 0 {
			return a, b, true
		}
		return -a, b, false
	}

	if a > 0 && b > 0 {
		return a, b, true
	}
	if a > 0 && b < 0 {
		return a, -b, false
	}
	if a < 0 && b > 0 {
		return -a, b, false
	}
	if a < 0 && b < 0 {
		return -a, -b, true
	}
	log.Fatal("positive error")
	return 0, 0, true
}

const mod = 1000000007

func main() {
	n := nextInt()
	a := make([]int, n)
	b := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = nextInt()
		b[i] = nextInt()
	}
	count := make(map[key]int)
	twoZeroes, zeroOne, oneZero := 0, 0, 0
	for i := 0; i < n; i++ {
		var val key
		if a[i] == 0 && b[i] == 0 {
			twoZeroes++
		} else if a[i] == 0 {
			zeroOne++
		} else if b[i] == 0 {
			oneZero++
		} else {
			pa, pb, pos := toPositive(a[i], b[i])
			g := gcd(pa, pb)
			val = key{pos, pa / g, pb / g}
			count[val]++
		}
	}

	ans := (powMod(2, zeroOne) + powMod(2, oneZero) - 1 + mod) % mod
	used := make(map[key]bool)
	for k, cnt := range count {
		if used[k] {
			continue
		}

		pair := key{!k.Positive, k.Second, k.First}
		ans *= (powMod(2, cnt) + powMod(2, count[pair]) - 1 + mod) % mod
		used[pair] = true
	}
	ans += twoZeroes
	ans--
	fmt.Println(ans)
}

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
	twoZeroes := 0
	for i := 0; i < n; i++ {
		pa, pb, pos := toPositive(a[i], b[i])
		g := gcd(pa, pb)
		var val key
		if pa == 0 && pb == 0 {
			twoZeroes++
			continue
		} else if pa == 0 {
			val = key{true, 0, 1}
		} else if pb == 0 {
			val = key{false, 1, 0}
		} else {
			val = key{pos, pa / g, pb / g}
		}
		count[val]++
	}
	fmt.Println(count)

	ans := 1
	used := make(map[key]bool)
	for k, cnt := range count {
		if used[k] {
			continue
		}

		pair := key{!k.Positive, k.Second, k.First}
		if pcnt, ok := count[pair]; ok {
			ans *= (powMod(2, cnt) + powMod(2, pcnt) - 1) % mod
			ans %= mod
			used[pair] = true
		} else {
			ans *= powMod(2, cnt)
		}
	}
	ans += twoZeroes
	ans--
	fmt.Println(ans)
}

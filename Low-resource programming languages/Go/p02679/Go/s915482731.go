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

const mod = 1000000007

func main() {
	n := nextInt()
	a := make([]float64, n)
	b := make([]float64, n)
	for i := 0; i < n; i++ {
		a[i] = nextFloat()
		b[i] = nextFloat()
	}
	mp := make(map[float64]int)
	count := make(map[int]int)
	for i := 0; i < n; i++ {
		val := a[i] / b[i]
		if v, ok := mp[-1.0/val]; ok {
			count[v]++
		}
		mp[val] = i
	}

	ans := 0
	for i := 0; i < n; i++ {
		ans += powMod(2, n-count[i]-1-i)
		ans %= mod
	}
	fmt.Println(ans)
}

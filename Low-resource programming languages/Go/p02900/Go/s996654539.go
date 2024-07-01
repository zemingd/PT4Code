package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc *bufio.Scanner = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return sc
}()

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func calcGcd(l, r int) int {
	if r > l {
		r, l = l, r
	}

	d := l % r
	for d != 0 {
		l = r
		r = d
		d = l % r
	}
	return r
}

func calcDsOCd(l, r int) int {
	gcd := calcGcd(l, r)
	max := math.Sqrt(float64(gcd))
	maxI := int(math.Ceil(max)) + gcd%2
	primes := []int{1}

	for i := 2; i <= maxI; i++ {
		isDivid := false
		for gcd%i == 0 {
			gcd = gcd / i
			isDivid = true
		}
		if isDivid {
			primes = append(primes, i)
		}
	}
	if gcd != 1 && len(primes) != 1 {
		primes = append(primes, gcd)
	}
	return len(primes)
}

func main() {
	l, r := nextInt(), nextInt()
	result := calcDsOCd(l, r)
	fmt.Println(result)
}

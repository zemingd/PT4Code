package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func out(x ...interface{}) {
	fmt.Println(x...)
}

var sc = bufio.NewScanner(os.Stdin)

func getInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func getString() string {
	sc.Scan()
	return sc.Text()
}

// Pfs :　素因数分解し、スライスを作成
func Pfs(n uint64) (pfs []uint64) {
	for n%2 == 0 {
		pfs = append(pfs, 2)
		n = n / 2
	}

	for i := uint64(3); i*i <= n; i = i + 2 {
		for n%i == 0 {
			pfs = append(pfs, i)
			n = n / i
		}
	}

	if n > 2 {
		pfs = append(pfs, n)
	}

	return
}

func max(a, b uint64) uint64 {
	if a > b {
		return a
	}
	return b
}

func checkDigit(n uint64) uint64 {
	cnt := uint64(1)
	for {
		if n/10 == 0 {
			break
		}
		n /= 10
		cnt++
	}
	return cnt
}

func main() {
	sc.Split(bufio.ScanWords)

	var N uint64
	fmt.Scan(&N)

	p := Pfs(N)

	a := uint64(1)
	b := uint64(1)
	for i := len(p) - 1; i >= 0; i-- {
		v := p[i]
		if a < b {
			a *= v
		} else {
			b *= v
		}
	}

	da := checkDigit(a)
	db := checkDigit(b)
	out(p)
	out(a, b, da, db)
	out(max(da, db))
}

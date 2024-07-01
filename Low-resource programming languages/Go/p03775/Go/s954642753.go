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
func Pfs(n int) (pfs []int) {
	for n%2 == 0 {
		pfs = append(pfs, 2)
		n = n / 2
	}

	for i := 3; i*i <= n; i = i + 2 {
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

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func checkDigit(n int) int {
	cnt := 1
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

	N := getInt()

	p := Pfs(N)

	a := 1
	b := 1
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
	//	out(p)
	//	out(a, b, da, db)
	out(max(da, db))
}

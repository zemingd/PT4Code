package main

import (
	"fmt"
	"bufio"
	"os"
	"strconv"
)

//=====I/O=====

var (
	sc = bufio.NewScanner(os.Stdin)
	wr = bufio.NewWriter(os.Stdout)
)

func scanInt() int {
	sc.Scan()
	a,_ := strconv.Atoi(sc.Text())
	return a
}

func scanInts(n int) []int {
	res := make([]int, n)
	for i := 0; i < n; i++ { res[i] = scanInt() }
	return res
}

func scanText() string {
	sc.Scan()
	return sc.Text()
}

func printInts(a ...int) {
	for i, e := range a {
		fmt.Fprint(wr, e)
		if i != len(a)-1 { fmt.Fprint(wr, " ") }
	}
	fmt.Fprintln(wr)
	wr.Flush()
}

//=====main=====

func main() {
	sc.Split(bufio.ScanWords)

	x, y := scanInt(), scanInt()

	if (x+y)%3 != 0 {
		fmt.Println(0)
	} else {
		facInit(x+y)
		fmt.Println(comb((x+y)/3, (x+y)/3*2-y))
	}

}

const mod = 1000000007

var (
	fac []int
	ifac []int
)


func facInit(n int) {
	fac = make([]int,n+1)
	ifac = make([]int,n+1)
	
	mpow := func (x,n int) int {
		a := 1
		for {
			if n&1 == 1 {
				a = a*x %mod
			}
			x = x*x %mod
			n = n >> 1
			if n == 0 {
				break
			}
		}
		return a
	}

	fac[0] = 1
	ifac[0] = 1
	for i := 0; i < n; i++ {
		fac[i+1] = fac[i]*(i+1)%mod
		ifac[i+1] = ifac[i]*mpow(i+1,mod-2)%mod
	}
}

func comb(a,b int) int {
	if a == 0 && b == 0 {
		return 1
	}
	return (fac[a]*ifac[b]%mod)*ifac[a-b]%mod
}

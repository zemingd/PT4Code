package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.ParseInt(sc.Text(), 10, 64)
	if e != nil {
		panic(e)
	}
	return int(i)
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

const div = 1000000000 + 7

func main() {
	n, b := nextInt(), nextInt()

	bl := int64(b)
	red := int64(n - b)
	sel := red + 1
	bsep := bl - 1

	for i := 1; i <= b; i++ {
		// fmt.Printf("%#v\n", nCr(sel, int64(i)))
		// fmt.Printf("%#v\n", nCr(bsep, int64(i-1)))
		fmt.Println((nCr(sel, int64(i)) * nCr(bsep, int64(i-1))) % div)
	}
}

func nCr(n, r int64) int64 {
	if r == 0 {
		return 1
	}

	var a uint64 = 1
	for i := 0; i < int(r); i++ {
		// fmt.Printf("%#v\n", n-int64(i))
		a *= (uint64(n) - uint64(i))
	}

	var b uint64 = 1
	for i := 1; i <= int(r); i++ {
		b *= uint64(i)
	}

	return int64(a / b)
}

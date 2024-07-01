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
		fmt.Println((nCr(sel, int64(i)) * nCr(bsep, int64(i-1))) % div)
	}
}

func nCr(n, r int64) int64 {
	if r == 0 {
		return 1
	}

	var a int64 = 1
	for i := 0; i < int(r); i++ {
		a *= (n - int64(i))
	}

	var b int64 = 1
	for i := 1; i <= int(r); i++ {
		b *= int64(i)
	}

	return a / b
}

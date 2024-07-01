package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextStr() string {
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

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	a := nextInt()
	b := nextInt()
	ans := 0
	rep := n / (a + b) //繰り返す回数
	mod := n % (a + b) //余り

	//繰り返しの分に余りの分を加算
	ans = rep * a
	if 0 < mod && mod <= a {
		ans += mod
	}
	if a < mod {
		ans += a
	}
	fmt.Println(ans)
}
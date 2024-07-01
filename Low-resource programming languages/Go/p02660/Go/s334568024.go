package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()

	var i int64
	var ret int
	for i = 2; i <= n; i++ {
		if n%i == 0 {
			n = n / i
			ret++
		}
	}
	fmt.Println(ret)
}

func nextInt() int64 {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return int64(i)
}

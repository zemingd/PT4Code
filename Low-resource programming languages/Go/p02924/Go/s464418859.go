package main

import (
	"bufio"
	"fmt"
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

func calcMax(n int) (sum int) {
	return n * (n - 1) / 2
	// for i := 1; i < n+1; i++ {
	// 	d := i + 1
	// 	if d > n {
	// 		d -= n
	// 	}
	// 	sum += i % d
	// }
	// return
}

func main() {
	n := nextInt()
	fmt.Println(calcMax(n))
}

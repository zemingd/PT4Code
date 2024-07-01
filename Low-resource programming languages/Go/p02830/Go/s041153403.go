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
func nextString() string {
	sc.Scan()
	return sc.Text()
}

func build(n int, l, r string) string {
	result := make([]rune, n*2)
	ll := []rune(l)
	rr := []rune(r)
	for i := 0; i < n; i++ {
		ii := i * 2
		result[ii] = ll[i]
		result[ii+1] = rr[i]
	}
	return string(result)
}

func main() {
	n := nextInt()
	s, t := nextString(), nextString()
	r := build(n, s, t)

	fmt.Println(r)
}

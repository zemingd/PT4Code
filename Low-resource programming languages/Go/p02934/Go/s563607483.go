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
func nextIntsCh(n int) <-chan int {
	ints := make(chan int, n)
	go func() {
		defer close(ints)
		for i := 0; i < n; i++ {
			ints <- nextInt()
		}
	}()
	return ints
}
func main() {
	n := nextInt()
	sum := 0.0
	for i := range nextIntsCh(n) {
		v := (1 / float64(i))
		sum += v
	}
	fmt.Println(1 / sum)
}

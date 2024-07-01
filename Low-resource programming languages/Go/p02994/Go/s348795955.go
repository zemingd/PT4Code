package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

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
	l := nextInt()
	taste := 0
	if l >= 0 {
		for i := 1; i < n; i++ {
			taste += i + l
		}
	} else if l < 0 && (n + l) > 0 {
		for i := 0; i < n; i++ {
			taste += i + l
		}
	} else {
		for i := 0; i < n-1; i++ {
			taste += i + l
		}
	}
	fmt.Println(taste)
}

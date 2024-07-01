package main

import (
	"bufio"
	"os"
	"strconv"
	"fmt"
)

var sc = bufio.NewScanner(os.Stdin)

func nextString() string {
	if !sc.Scan() {
		panic("failed scan string")
	}
	return sc.Text()
}

func nextInt() int {
	if !sc.Scan() {
		panic("failed scan int")
	}
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()
	t := nextInt()

	min := 2000
	for i := 0; i < n; i++ {
		c := nextInt()
		ti := nextInt()
		if ti <= t && c < min {
			min = c
		}
	}
	if min == 2000 {
		fmt.Println("TLE")
	} else {
		fmt.Println(min)
	}
}

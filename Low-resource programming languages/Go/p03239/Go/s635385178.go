package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc *bufio.Scanner

func init() {
	sc = bufio.NewScanner(os.Stdin)
	buffsize := 1000000
	buff := make([]byte, buffsize)
	sc.Buffer(buff, buffsize)
	sc.Split(bufio.ScanWords)
}

func loadint() (result int) {
	sc.Scan()
	result, _ = strconv.Atoi(sc.Text())
	return
}

func main() {
	N := loadint()
	T := loadint()
	mincost := 9999
	for i := 0; i < N; i++ {
		c := loadint()
		t := loadint()
		if t <= T {
			if c < mincost {
				mincost = c
			}
		}
	}
	if mincost <= 1000 {
		fmt.Println(mincost)
	} else {
		fmt.Println("TLE")
	}
}

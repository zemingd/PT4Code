package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var s = bufio.NewScanner(os.Stdin)

func next() int {
	s.Scan()
	i, _ := strconv.Atoi(s.Text())
	return i
}

func main() {
	s.Split(bufio.ScanWords)
	N := next()
	T := next()
	min := 10000
	for i := 0; i < N; i++ {
		c := next()
		t := next()
		if t <= T && c < min {
			min = c
		}
	}
	if min < 10000 {
		fmt.Println(min)
	} else {
		fmt.Println("TLE")
	}

}

package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func getInt() int {
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
	return n
}

func sum(n []int) int {
	a := 0
	for _, v := range n {
		a += v
	}
	return a
}

func main() {
	sc.Split(bufio.ScanWords)
	a := getInt()
	sc.Scan()
	s := sc.Text()
	if a >= 3200 {
		fmt.Println(s)
	} else {
		fmt.Println("red")
	}

}

package main

import (
	"bufio"
	"fmt"
	"strconv"
)

var sc *bufio.Scanner

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

const INF = 1000000000

func main() {
	//sc = bufio.NewScanner(os.Stdin)
	//sc.Split(bufio.ScanWords)
	//n := nextInt()
	var s string
	fmt.Scan(&s)
	switch {
	case s[0:1] == s[1:2]:
		fmt.Println("Bad")
	case s[1:2] == s[2:3]:
		fmt.Println("Bad")
	case s[2:3] == s[3:4]:
		fmt.Println("Bad")
	default:
		fmt.Println("Good")
	}
}

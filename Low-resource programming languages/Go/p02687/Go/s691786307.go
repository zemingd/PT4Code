package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var s string
	fmt.Scan(&s)
	if s == "ABC" {
		fmt.Println("ARC")
		return
	}
	fmt.Println("ABC")
}

// =================================
// I/O util
// =================================

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
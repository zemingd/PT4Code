package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var s, w int
	fmt.Scan(&s, &w)
	if s <= w {
		fmt.Println("unsafe")
		return
	}
	fmt.Println("safe")
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

// =================================
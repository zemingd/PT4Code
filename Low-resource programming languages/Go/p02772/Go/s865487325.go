package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	r := true
	for i := 0; i < n; i++ {
		ai := nextInt()
		if ai%2 == 0 && ai%3 != 0 && ai%5 != 0 {
			r = false
		}
	}
	if r {
		fmt.Println("APPROVED")
	} else {
		fmt.Println("DENIED")
	}
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

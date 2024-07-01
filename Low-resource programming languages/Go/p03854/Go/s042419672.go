package main

import (
	"bufio"
	"fmt"
	"os"
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

func main() {
	sc = bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	sc.Scan()
	s := sc.Text()
	n := len(s)
	for n > 0 {
		switch {
		case n >= 5 && s[n-5:n] == "dream":
			n -= 5
		case n >= 7 && s[n-7:n] == "dreamer":
			n -= 7
		case n >= 5 && s[n-5:n] == "erase":
			n -= 5
		case n >= 6 && s[n-6:n] == "eraser":
			n -= 6
		default:
			n = -1
		}
	}
	switch n {
	case 0:
		fmt.Println("YES")
	default:
		fmt.Println("NO")
	}
}

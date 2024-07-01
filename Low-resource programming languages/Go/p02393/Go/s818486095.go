package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc.Split(bufio.ScanWords)
	a := nextInt()
	b := nextInt()
	c := nextInt()
	if a <= b && a <= c && b < c {
		fmt.Println(a, b, c)

	} else if a <= b && a <= c {
		fmt.Println(a, c, b)
	} else if b <= a && b <= c && a <= c {
		fmt.Println(b, a, c)
	} else if b <= a && b <= c && a > c {
		fmt.Println(b, c, a)
	} else if c <= a && a <= b {
		fmt.Println(c, a, b)
	} else {
		fmt.Println(c, b, a)
	}
}

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}


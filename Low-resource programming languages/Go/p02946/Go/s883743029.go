package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.ParseInt(sc.Text(), 10, 64)
	if e != nil {
		panic(e)
	}
	return int(i)
}

func main() {
	k, x := nextInt(), nextInt()
	re := []string{}

	if k == 1 {
		fmt.Println(x)
		return
	}

	left := x - k + 1
	for {
		if x == left {
			break
		}
		re = append(re, fmt.Sprintf("%d", left))
		left++
	}
	re = append(re, fmt.Sprintf("%d", x))
	right := x + k - 1
	c := x + 1
	for {
		re = append(re, fmt.Sprintf("%d", c))
		if c == right {
			break
		}
		c++
	}

	fmt.Println(strings.Join(re, " "))
}

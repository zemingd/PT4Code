package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int64 {
	sc.Scan()
	i, e := strconv.ParseInt(sc.Text(), 10, 64)
	if e != nil {
		panic(e)
	}
	return i
}

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	s := nextString()
	ss := strings.Split(s, " ")
	a, _ := strconv.ParseInt(ss[0], 10, 64)
	b, _ := strconv.ParseInt(ss[1], 10, 64)
	if a < b {
		fmt.Println(b*2 - 1)
		return
	}
	if b < a {
		fmt.Println(a*2 - 1)
		return
	}
	fmt.Println(a + b)
}

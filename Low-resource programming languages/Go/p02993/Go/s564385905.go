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

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	n := nextLine()
	ss := strings.Split(n, "")
	cache := ss[0]

	for index := 1; index < 4; index++ {
		if cache == ss[index] {
			fmt.Println("Bad")
			return
		}
		cache = ss[index]
	}
	fmt.Println("Good")
}

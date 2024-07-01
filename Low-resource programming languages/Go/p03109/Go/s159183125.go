package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
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

func main() {
	sc.Split(bufio.ScanWords)

	s := next()
	ss := strings.Split(s, "/")
	ymd := make([]int, 3)
	for i := 0; i < 3; i++ {
		x, _ := strconv.Atoi(ss[i])
		ymd[i] = x
	}
	if ymd[0] < 2019 || (ymd[0] == 2019 && ymd[1] <= 4) {
		fmt.Println("Heisei")
	} else {
		fmt.Println("TBD")
	}
}
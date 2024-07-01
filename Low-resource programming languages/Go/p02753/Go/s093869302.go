package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextStr() string {
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
	s := nextStr()
	comp := strings.Split(s, "")
	if comp[0] == comp[1] && comp[1] == comp[2] {
		fmt.Println("No")
	} else {
		fmt.Println("Yes")
	}
}
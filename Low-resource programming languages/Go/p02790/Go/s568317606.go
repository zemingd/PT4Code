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
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	a := nextInt()
	b := nextInt()
	A := strings.Repeat(strconv.Itoa(a), b)
	B := strings.Repeat(strconv.Itoa(b), a)

	if A > B {
		fmt.Printf("%s", B)
	} else {
		fmt.Printf("%s", A)
	}
}

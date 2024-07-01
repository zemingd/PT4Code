package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
)

func out(x ...interface{}) {
	fmt.Println(x...)
}

var sc = bufio.NewScanner(os.Stdin)

func getInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		log.Fatal(e)
	}
	return i
}

func getString() string {
	sc.Scan()
	return sc.Text()
}

func asub(a, b int) int {
	if a > b {
		return a - b
	}
	return b - a
}
func main() {
	sc.Split(bufio.ScanWords)

	a := getInt()
	b := getInt()
	c := getInt()
	k := getInt()

	ans := 0

	if a >= k {
		out(k)
	} else if a+b >= k {
		out(a)
	} else {
		out(-k + a + b)
	}

}

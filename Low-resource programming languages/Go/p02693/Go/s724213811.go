package main

import (
	"bufio"
	"fmt"
	"log"
	"math"
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

	n := getInt()
	a := getInt()
	b := getInt()

	if n == 1 {
		out("OK")
		os.Exit(0)
	}

	if b-a >= n {
		out("OK")
		os.Exit(0)
	}
	c := math.Mod(float64(a), float64(n))
	if b-a+int(c) >= n {
		out("OK")
		os.Exit(0)
	}
	out("NG")
}

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

	k := getInt()
	a := getInt()
	b := getInt()
	b = (b / k) * k
	if b >=a {
		out("OK")
	} else {
		out("NG")
	}
}
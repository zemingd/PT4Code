package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func calc() string {
	sc.Split(bufio.ScanWords)
	n := 0
	n += nextInt() * 100
	n += nextInt() * 10
	n += nextInt()

	if n%4 == 0 {
		return "YES"
	}
	return "NO"

}

func main() {
	fmt.Println(calc())
}

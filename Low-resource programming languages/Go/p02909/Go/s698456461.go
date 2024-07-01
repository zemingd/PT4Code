package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)

	s := nextStr()
	if s == "Sunny" {
		fmt.Println("Cloudy")
		return
	}
	if s == "Cloudy" {
		fmt.Println("Rainy")
		return
	}
	fmt.Println("Sunny")
}

// ---- readfunc
func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
func nextStr() string {
	sc.Scan()
	return sc.Text()
}

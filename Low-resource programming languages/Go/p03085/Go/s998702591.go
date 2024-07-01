package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func read() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	v, _ := strconv.Atoi(read())
	return v
}

func main() {
	sc.Split(bufio.ScanWords)

	b := read()

	if b == "A" {
		fmt.Println("T")
	} else if b == "T" {
		fmt.Println("A")
	} else if b == "C" {
		fmt.Println("G")
	} else if b == "G" {
		fmt.Println("C")
	}

}

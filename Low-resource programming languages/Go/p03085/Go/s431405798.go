package main

import(
	"bufio"
	"strconv"
	"fmt"
	"os"
	"sort"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
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

func reverse(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}

func main() {
	sc.Split(bufio.ScanWords)

	a := nextInt()
	
	if a == "T" {
		fmt.Println("A")
	}

	if a == "A" {
		fmt.Println("T")
	}
	
	if a == "G" {
		fmt.Println("C")
	}

	if a == "C" {
		fmt.Println("G")
	}
}

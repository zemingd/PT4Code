package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
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
	var s string
	fmt.Scanf("%s", &s)
	if s == "Sunny" {
		fmt.Printf("Cloudy")
	}
	if s == "Cloudy" {
		fmt.Printf("Rainy")
	}
	if s == "Rainy" {
		fmt.Printf("Sunny")
	}
}

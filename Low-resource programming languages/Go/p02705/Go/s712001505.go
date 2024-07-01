package main

import (
    "bufio"
    "fmt"
	"os"
	"math"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var R float64
	fmt.Scan(&R)
	fmt.Println(R * 2 * math.Pi)
}
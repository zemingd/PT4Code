package main

import (
	"bufio"
	"fmt"
	"log"
	"math"
	"os"
	"strconv"
	"sync"
)

func main() {
	n := scanSplitedFloat64()
	x := scanSplitedFloat64()
	t := scanSplitedFloat64()

	totalTime := math.Ceil(n/x) * t
	fmt.Printf("%.0f\n", totalTime)
}

var once sync.Once
var scanner *bufio.Scanner

func scanSplitedFloat64() float64 {
	once.Do(func() {
		scanner = bufio.NewScanner(os.Stdin)
		scanner.Split(bufio.ScanWords)
	})
	scanner.Scan()
	val, err := strconv.ParseFloat(scanner.Text(), 64)
	if err != nil {
		log.Fatal(err)
	}
	return val
}

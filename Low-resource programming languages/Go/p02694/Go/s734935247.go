package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)


var sc = bufio.NewScanner(os.Stdin)


func main() {
	sc.Split(bufio.ScanWords)
	original := float64(100)
	goal := nextFloat64()
	count := 0
	tmp := original
	for ;; {
		tmp *= 1.01
		tmp = math.Floor(tmp)
		count++
		if goal <= tmp {
			break
		}
	}
	fmt.Println(count)
}

func nextFloat64() float64 {
	sc.Scan()
	f, e := strconv.ParseFloat(sc.Text(), 64)
	if e != nil {
		panic(e)
	}
	return f
}

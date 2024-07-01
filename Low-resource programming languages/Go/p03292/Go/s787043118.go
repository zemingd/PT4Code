package main

import (
	"bufio"
	"fmt"
	"math"
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

func main() {
	sc.Split(bufio.ScanWords)
	var n [3]int
	for i := 0; i < 3; i++ {
		n[i] = nextInt()
	}
	var min int = 1000000
	for i := 0; i < 3; i++ {
		for j := 0; j < 3; j++ {
			if i != j {
				for k := 0; k < 3; k++ {
					if j != k && i != k {
						var cost = 0
						cost += int(math.Abs(float64(n[j] - n[i])))
						cost += int(math.Abs(float64(n[k] - n[j])))
						if min > cost {
							min = cost
						}
					}
				}
			}
		}
	}
	fmt.Print(min)
}
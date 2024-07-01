package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
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

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()
	slice := strings.Split(nextLine(), "")
	// fmt.Println(s)
	min := math.Inf(1)

	for i := 0; i < n; i++ {
		count := 0.0
		for j, s := range slice {
			if i == j {
				continue
			}

			if i < j && s == "E" {
				count++
			} else if i > j && s == "W" {
				count++
			}

		}

		if min > count {
			min = count
		}
	}

	fmt.Println(int(min))
}

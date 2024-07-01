package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

func main() {
	scanner.Split(bufio.ScanWords)
	L := readInt()
	R := readInt()
	res := 1000000007
	for i := 0; i < 100000; i++ {
		if 2019*i < L {
			continue
		} else if 2019*i <= R {
			res = 0
			break
		} else {
			break
		}
	}
	for i := L; i < R; i++ {
		res = min(res, (i*(i+1))%2019)
	}
	fmt.Println(res)
}

/*-----------------------------------------*/

func checkError(err error) {
	if err != nil {
		fmt.Println(err)
		os.Exit(1)
	}
}

func read() string {
	scanner.Scan()
	return scanner.Text()
}

func readInt() int {
	res, err := strconv.Atoi(read())
	checkError(err)
	return res
}

func min(a int, b int) int {
	return int(math.Min(float64(a), float64(b)))
}

func max(a int, b int) int {
	return int(math.Max(float64(a), float64(b)))
}

func pow(a int, b int) int {
	return int(math.Pow(float64(a), float64(b)))
}

func sqrt(a int) float64 {
	return math.Sqrt(float64(a))
}

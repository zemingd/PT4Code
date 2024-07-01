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

func init() {
	sc.Split(bufio.ScanWords)
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.ParseInt(sc.Text(), 10, 64)
	if e != nil {
		panic(e)
	}
	return int(i)
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	n := nextLine()
	ss := strings.Split(n, "")
	hh := make([]int, 0, len(ss))
	for _, item := range ss {
		v, _ := strconv.Atoi(item)
		hh = append(hh, v)
	}

	var b float64 = 753
	var re float64 = 100000000

	r := 2
	for index := 0; r < len(hh); index++ {
		v := float64(100*hh[index] + 10*hh[index+1] + hh[r])
		tmp := math.Abs(b - v)
		if re > tmp {
			re = tmp
		}
		r++
	}

	fmt.Println(re)
}

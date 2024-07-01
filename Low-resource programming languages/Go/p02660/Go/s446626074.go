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
	n := nextInt()
	//tmp := n
	var ret int
	var c []int64

	var i int64
	for {
		i, n = parse(n)

		if i == 1 {
			c = append(c, n)
			break
		} else {
			c = append(c, i)
		}
	}

	dic := make(map[int64][]int64)
	for _, v := range c {
		dic[v] = make([]int64, 2)
	}
	for _, v := range c {
		if dic[v][0] == 0 {
			dic[v][0]++
			ret++
			continue
		}
		if dic[v][1] != dic[v][0] {
			dic[v][1]++
		} else {
			dic[v][0]++
			dic[v][1] = 0
			ret++
		}
	}
	fmt.Println(ret)
}

func parse(n int64) (int64, int64) {
	for i := 2; float64(i) <= math.Sqrt(float64(n)); i++ {
		if n%int64(i) == 0 {
			return int64(i), n / int64(i)
		}
	}

	return 1, n
}

func nextInt() int64 {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return int64(i)
}

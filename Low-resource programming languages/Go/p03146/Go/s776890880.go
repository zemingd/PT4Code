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
	n := nextInt()

	nn := make([]int, 10000, 10000)
	mm := map[int]int{}

	nn[0] = n

	i := 1
	for {
		var re int
		v := nn[i-1]
		if v%2 == 0 {
			nn[i] = v / 2
			re = v / 2
		} else {
			nn[i] = 3*v + 1
			re = 3*v + 1
		}

		mm[re]++
		if mm[re] > 1 {
			fmt.Println(i + 1)
			return
		}
		i++
	}
}

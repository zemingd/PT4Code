package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	x, _ := strconv.Atoi(sc.Text())
	return x
}

func main() {
	sc.Split(bufio.ScanWords)
	x := make([]int, 3)
	for i := range x {
		x[i] = nextInt()
	}
	sort.Ints(x)
	fmt.Println(x[0] + x[1] + x[2]*10)

}

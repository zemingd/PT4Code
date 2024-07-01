package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var stdin = bufio.NewScanner(os.Stdin)

func main() {
	arr := scanArrayInt()
	n, y := arr[0], arr[1]
	ret := []int{-1, -1, -1}
	for y10000 := 0; y10000 <= n; y10000++ {
		for y5000 := 0; y5000 <= n; y5000++ {
			y1000 := n - y10000 + y5000
			t := y10000*10000 + y5000*5000 + y1000*1000
			if t == y {
				ret = []int{y10000, y5000, y1000}
			}
		}
	}
	fmt.Println(ret[0], ret[1], ret[2])
}
func scanArrayInt() []int {
	var ret = []int{}
	stdin.Scan()
	for _, s := range strings.Split(stdin.Text(), " ") {
		i, _ := strconv.Atoi(s)
		ret = append(ret, i)
	}
	return ret
}

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

func readInt() int {
	sc.Scan()
	r, _ := strconv.Atoi(sc.Text())
	return r
}

func main() {
	n, m := readInt(), readInt()
	nums := make(map[int]int)
	var key, val int
	for i := 1; i <= m; i++ {
		key = readInt()
		val = readInt()
		if key == 1 && val == 0 {
			fmt.Println(-1)
			return
		}
		if v, ok := nums[key]; ok && v != val {
			fmt.Println(-1)
			return
		}
		nums[key] = val
	}
	for i := 1; i <= n; i++ {
		if v, ok := nums[i]; ok {
			fmt.Print(v)
			continue
		}
		if i == 1 {
			fmt.Print(1)
		} else {
			fmt.Print(0)
		}
	}
	fmt.Println()
}

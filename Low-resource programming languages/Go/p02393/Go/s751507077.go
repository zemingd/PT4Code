package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func nextInt(sc *bufio.Scanner) (n int, err error) {
	sc.Scan()
	s := sc.Text()
	n, err = strconv.Atoi(s)
	return
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
loop:
	for {
		arr := make([]int, 3)
		for i, _ := range arr {
			if a, err := nextInt(sc); err == nil {
				arr[i] = a
			} else {
				break loop
			}
		}
		sort.Sort(sort.IntSlice(arr))
		fmt.Println(arr[0], arr[1], arr[2])
	}
}

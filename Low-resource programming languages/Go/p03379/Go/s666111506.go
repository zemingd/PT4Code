package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	var N int
	fmt.Scan(&N)

	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	h := make([]int, N)
	for i := range h {
		sc.Scan()
		h[i], _ = strconv.Atoi(sc.Text())
	}
	for i := 0; i < N; i++ {
		tmp := []int{}
		tmp = append(tmp, h[:i]...)
		tmp = append(tmp, h[i+1:]...)
		sort.Ints(tmp)
		w := len(tmp) / 2
		fmt.Println(tmp[w : w+1][0])
	}
}
package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextMochi() int {
	sc.Scan()
	valueInt, _ := strconv.Atoi(sc.Text())
	return valueInt
}

func main() {
	var N int
	fmt.Scan(&N)

	var mochi []int
	mochi = make([]int, N, N)
	for i := 0; i < N; i++ {
		mochi[i] = nextMochi()
	}

	sort.Slice(mochi, func(i, j int) bool {
		return mochi[i] > mochi[j]
	})
	fmt.Println(mochi)

	var tmp int
	var cnt int
	for _, value := range mochi {
		if value == tmp {
			continue
		}
		cnt++
		tmp = value
	}
	fmt.Println(cnt)
}

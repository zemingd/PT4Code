package main

import (
	"bufio"
	"fmt"
    "os"
    "sort"
)

func main() {
	var N int
	fmt.Scan(&N)
	V_LIST := make([]float64, N)
	var sc = bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := 0; i < N; i++ {
		fmt.Scan(&V_LIST[i])
	}

    var sorted_v_list = V_LIST
    sort.Float64Slice(sorted_v_list).Sort()
    ans := V_LIST[0]
	for i := 1; i < N; i++ {
        ans = (ans + V_LIST[i]) / 2
    }
	fmt.Println(ans)
}
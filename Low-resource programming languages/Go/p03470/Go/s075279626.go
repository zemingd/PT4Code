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
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)

	N := nextInt()
	D := make([]int, N)
	//N := 7
	//D := []int{50, 30, 50, 100, 50, 80, 30}
	count := 0
	for i := 0; i < N; i++ {
		D = append(D, nextInt())
	}
	
	
	sort.Sort(sort.IntSlice(D))

	for i := 0; i < N - 1; i++ {
		for j := i + 1; j < N; j++ {
			if D[i] == D[j] {
				count++
				break
			}
		}
	}

	fmt.Println(N - count)

}

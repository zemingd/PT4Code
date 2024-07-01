package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	var top,middle,bottom []int

	sc.Split(bufio.ScanWords)

	N := nextInt()

	for i := 0; i < N; i++ {
		top = append(top, nextInt())
	}
	for i := 0; i < N; i++ {
		middle = append(middle, nextInt())
	}
	for i := 0; i < N; i++ {
		bottom = append(bottom, nextInt())
	}

	sort.Ints(top)
	sort.Ints(middle)
	sort.Ints(bottom)

	ans := 0
	for i:=0;i<N;i++{
		a := sort.Search(N, func(n int) bool {
			return top[n] >= middle[i]
		})
		c := sort.Search(N, func(n int) bool {
			return bottom[n] > middle[i]
		})
		ans += a*(N-c)
	}
	fmt.Println(ans)
}
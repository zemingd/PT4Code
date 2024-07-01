package main

import (
    "bufio"
    "fmt"
    "os"
    "strconv"
	"sort"
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
	rate_list := []int{}

	for i := 0; i < N; i++ {
		rate_list = append(rate_list,nextInt())
	}

	sort.Ints(rate_list)
	val := 400
	num := rate_list[0] / val
	min := 1
	max := 0

	for i := 1; i < N; i++ {
		rate := rate_list[i] / val
		if rate >= 8 {
			max++
		}else if num < rate {
			min++
		}
		num = rate
	}
	fmt.Println(min, max+min)
}
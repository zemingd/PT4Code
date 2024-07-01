package main

import (
    "bufio"
    "fmt"
    "os"
    "strconv"
	//"sort"
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
	val := 400
	num := nextInt() / val
	min := 0
	if num < 8{
		min = 1
	}
	max := 0
	for i := 1; i < N; i++ {
		rate := nextInt() / val
		if rate >= 8 {
			max++
		}else if num < rate {
			min++
		}
		num = rate
	}

	if min == 0{
		fmt.Println(max, max)
	}else {
		fmt.Println(min, max+min)
	}
}
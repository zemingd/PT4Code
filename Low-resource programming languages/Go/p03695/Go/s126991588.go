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
	min := 1
	max := 0
	for i := 1; i < N; i++ {
		rate := nextInt() / val
		if rate == 8 {
			max++
		}else if num < rate && rate < 8 {
			min++
		}
		num = rate
	}
	fmt.Println(min, max+min)
}
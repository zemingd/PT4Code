package main

import (
	"bufio"
	"fmt"
	"os"
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

func nextFloat() float64 {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return float64(i)
}

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	var ans, mother float64
	for i := 0; i < n; i++ {
		mother += 1.0 / nextFloat()
	}
	ans = 1.0 / mother
	fmt.Println(ans)
}

package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	k := nextInt()
	sunuke := make([]bool, n)
	for i := 0; i < k; i++ {
		d := nextInt()
		for j := 0; j < d; j++ {
			a := nextInt()
			sunuke[a-1] = true
		}
	}
	ans := 0
	for i := 0; i < n; i++ {
		if sunuke[i] == false {
			ans++
		}
	}
	fmt.Println(ans)
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

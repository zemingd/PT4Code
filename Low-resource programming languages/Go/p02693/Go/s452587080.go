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
	k := nextInt()
	a := nextInt()
	b := nextInt()
	result := "NG"
	for i := a; i <= b; i++ {
		if i % k == 0 {
			result = "OK"
		}
	}
	fmt.Println(result)
}


func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

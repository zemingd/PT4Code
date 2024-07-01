package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
var out = bufio.NewWriter(os.Stdout)

func main() {
	//sc.Split(bufio.ScanWords)
	var a string
	ans := 0
	a = next()
	fmt.Println(a)
	for i := 0; i < 3; i++ {
		if string(a[i]) == "1" {
			ans++
		}
	}
	out.Flush()
	fmt.Println(ans)
}
func next() string {
	sc.Scan()
	return sc.Text()
}
func nextInt() int {
	a, e := strconv.Atoi(next())
	if e != nil {
		panic(e)
	}
	return a
}

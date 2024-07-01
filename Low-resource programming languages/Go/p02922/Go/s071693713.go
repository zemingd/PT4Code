package main

import (
	"fmt"
	"bufio"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin);

func nextInt() int {
    sc.Scan()
    i, e := strconv.Atoi(sc.Text())
    if e != nil {
        panic(e)
    }
    return i
}

func main(){
	var a, b int
	sc.Split(bufio.ScanWords)
	a = nextInt()
	b = nextInt()
	var ans int
	ans = (b + (a-1)) / a
	fmt.Println(ans)
}
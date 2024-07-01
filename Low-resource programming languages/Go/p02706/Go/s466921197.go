package main

import (
    "bufio"
    "fmt"
	"os"
	"strings"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var N,M int
	fmt.Scan(&N,&M)
	var A string
	if sc.Scan() {
        A = sc.Text()
	}
	var total int
	for _,i := range strings.Fields(A) {
		num,_ := strconv.Atoi(i)
		total += num
	}
	if N - total >= 0{
		fmt.Println(N - total)
	} else {
		fmt.Println(-1)
	}

}
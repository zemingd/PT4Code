package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	n, _ := strconv.ParseInt(nextLine(), 10, 0)
	as0 := strings.Split(nextLine(), " ")
	as := []int64{}
	for _, v := range(as0) {
		a, _ := strconv.ParseInt(v, 10, 0)
		as = append(as, a)
	}
	i := int64(1)
	j := int64(0)
	cond := true
	for k := int64(0); k < n; k++ {
		if as[k] != i {
			j++
			cond = true
		} else {
			i++
			cond = false
		}
	}
	if cond {
		fmt.Println("-1")
	} else {
		fmt.Println(j)
	}
}

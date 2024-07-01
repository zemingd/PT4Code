package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	scan_init()
	n := scanInt()
	memo := map[string]int{}
	memo["AC"] = 0
	memo["WA"] = 0
	memo["TLE"] = 0
	memo["RE"] = 0
	for i:=0; i<n; i++ {
		s := scan()
		if _,ok := memo[s]; !ok {
			memo[s] = 0
		}
		memo[s] ++
	}
	fmt.Println("AC x", memo["AC"])
	fmt.Println("WA x", memo["WA"])
	fmt.Println("TLE x", memo["TLE"])
	fmt.Println("RE x", memo["RE"])
}

var sc = bufio.NewScanner(os.Stdin)

func scan_init() {
	sc.Split(bufio.ScanWords)
}
func scanInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}
func scan() string {
	sc.Scan()
	return sc.Text()
}

package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	scan_init()
	var s,t string
	fmt.Scan(&s,&t)
	spilits := strings.Split(s,"")
	spilitt := strings.Split(t,"")
	count := 0
	for i:= 0; i<len(s); i++ {
		if spilits[i] != spilitt[i] {
			count ++
		}
	}
	fmt.Println(count)
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

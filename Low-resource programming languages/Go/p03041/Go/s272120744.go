package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var n, k, s string
	fmt.Scan(&n, &k, &s)
	strSlice := strings.Split(s, "")
	i, _ := strconv.Atoi(k)
	strSlice[i-1] = strings.ToLower(strSlice[i-1])
	fmt.Println(strings.Join(strSlice, ""))
}

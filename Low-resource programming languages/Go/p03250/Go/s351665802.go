package main

import (
	"fmt"
	"sort"
)

func main() {
	var s1, s2, s3 int
	fmt.Scan(&s1, &s2, &s3)
	s := []int{s1, s2, s3}
	sort.Ints(s)
	fmt.Println(s[2]*10 + s[0] + s[1])
}

package main

import (
	"fmt"
	"sort"
	"strings"
)

func main() {
	// byte(stringでのruneと同じ)でsliceで取る
	// sortするために要素をstringに直す
	// sort(昇順)
	// compareのために全体を一つのstringに直す
	// compare
	// (わりと長くてめんどい)
	var a, b []byte
	fmt.Scan(&a, &b)
	// fmt.Println(a, b)
	// for a
	aslice := make([]string, len(a))
	for i := 0; i < len(a); i++ {
		as := string(a[i])
		aslice[i] = as
	}
	sort.Strings(aslice)
	atext := strings.Join(aslice, "")
	// for b
	bslice := make([]string, len(b))
	for i := 0; i < len(b); i++ {
		bs := string(b[i])
		bslice[i] = bs
	}
	sort.Sort(sort.Reverse(sort.StringSlice(bslice)))
	btext := strings.Join(bslice, "")
	// fmt.Printf("a=%s, b=%s\n", atext, btext)
	if atext < btext {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

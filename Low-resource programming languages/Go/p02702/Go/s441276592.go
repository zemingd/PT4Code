package main

import (
	"fmt"
	"index/suffixarray"
	"strconv"
)

func main() {
	// Code for D - Multiple of 2019
	var s string
	fmt.Scanf("%s", &s)
	index := suffixarray.New([]byte(s))

	edges := map[int]int{}
	for i := 1; i <= 9999; i++ {
		b := strconv.Itoa(i * 2019)
		lookup := index.Lookup([]byte(b), -1)
		if len(lookup) > 0 {
			for _, start := range lookup {
				edges[start] = start + len(b)
			}
		}
	}

	total := 0
	for i := 0; i < len(s); i++ {
		var ok bool
		end := i
		for {
			end, ok = edges[end]
			if !ok {
				break
			}
			total += 1
		}
	}

	fmt.Printf("%d", total)
}
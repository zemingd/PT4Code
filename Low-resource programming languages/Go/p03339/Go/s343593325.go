package main

import (
	"fmt"
	"strings"
	"sync"
)

func main() {
	var n int
	var s string

	fmt.Scanf("%d\n%s", &n, &s)

	ss := []rune(s)

	min := 3 * 100000
	for i := 1; i < n; i++ {
		s1 := string(ss[0 : i-1])
		s2 := string(ss[i:n])
		if current := count(s1, s2); current < min {
			min = current
		}
	}

	fmt.Println(min)
}

func count(s1, s2 string) int {
	//result := strings.Count(s1, "W") + strings.Count(s2, "E")
	var result int

	chank := make(chan int, 2)
	var wg sync.WaitGroup
	wg.Add(2)

	go func(s, c string, n chan int) {
		n <- strings.Count(s, c)
		wg.Done()
	}(s1, "W", chank)

	go func(s, c string, n chan int) {
		n <- strings.Count(s, c)
		wg.Done()
	}(s2, "E", chank)

	wg.Wait()
	result += <-chank
	result += <-chank
	return result
}

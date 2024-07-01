package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {

	s := bufio.NewScanner(os.Stdin)
	s.Scan()
	//n, _ := strconv.Atoi(s.Text())
	s.Scan()

	m := make(map[int]bool)
	a := strings.Split(s.Text(), " ")
	c := 0
	for _, v := range a {
		i, _ := strconv.Atoi(v)
		if i > 3199 {
			c++
		} else {
			m[i/400] = true
		}
	}
	r := c + len(m)
	if r > 8 {
		r = 8
	}

	if len(m) == 0 {
		fmt.Printf("%v %v\n", 1, r)
		return
	}
	fmt.Printf("%v %v\n", len(m), r)
}

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
	_ = stoi(s.Text())

	s.Scan()
	vs := sstois(strings.Split(s.Text(), " "))

	s.Scan()
	cs := sstois(strings.Split(s.Text(), " "))

	sum := 0
	for i, v := range vs {
		if v-cs[i] > 0 {
			sum += v - cs[i]
		}
	}
	fmt.Println(sum)
}

func stoi(s string) int {
	res, err := strconv.Atoi(s)
	if err != nil {
		panic(err)
	}
	return res
}

func sstois(s []string) []int {
	res := make([]int, 0, len(s))
	for _, str := range s {
		res = append(res, stoi(str))
	}
	return res
}

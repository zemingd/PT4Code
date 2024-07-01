package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func nextString() string {
	var s string
	if sc.Scan() {
		s = sc.Text()
	}
	return s
}

func main() {
	sc.Split(bufio.ScanWords)
	s := nextString()
	var cubes = map[string]int{}
	for _, r := range s {
		cube := string([]rune{r})
		cubes[cube]++
	}
	if cubes["0"] < cubes["1"] {
		fmt.Println(2 * cubes["0"])
	} else if cubes["1"] < cubes["0"] {
		fmt.Println(2 * cubes["1"])
	} else {
		fmt.Println(2 * cubes["0"])
	}
}

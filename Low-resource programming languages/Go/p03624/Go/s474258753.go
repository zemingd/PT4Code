package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer([]byte{}, math.MaxInt64)
}

func readString() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	s := readString()
	m := map[string]bool{
		"a": true,
		"b": true,
		"c": true,
		"d": true,
		"e": true,
		"f": true,
		"g": true,
		"h": true,
		"i": true,
		"j": true,
		"k": true,
		"l": true,
		"m": true,
		"n": true,
		"o": true,
		"p": true,
		"q": true,
		"r": true,
		"s": true,
		"t": true,
		"u": true,
		"v": true,
		"w": true,
		"x": true,
		"y": true,
		"z": true,
	}
	keys := make([]string, 0, len(m))
	for k, _ := range m {
		keys = append(keys, k)
	}
	sort.Strings(keys)

	for _, c := range s {
		if m[string(c)] {
			m[string(c)] = false
		}
	}
	for _, c := range keys {
		if m[c] {
			fmt.Println(c)
			os.Exit(0)
		}
	}
	fmt.Println("None")
}

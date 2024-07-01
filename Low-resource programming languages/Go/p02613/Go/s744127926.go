package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
)

type Answer map[string](int)

func main() {
	scanner := Scanner()
	n := ReadInt(scanner)

	ans := Answer{}
	ans["AC"] = 0
	ans["WA"] = 0
	ans["TLE"] = 0
	ans["RE"] = 0
	for i := 0; i < n; i++ {
		s := ReadString(scanner)
		if _, ok := ans[s]; !ok {
			ans[s] = 1
		} else {
			ans[s]++
		}
	}

	// fmt.Printf("%v", ans)

	fmt.Printf("%v x %v\n", "AC", ans["AC"])
	fmt.Printf("%v x %v\n", "WA", ans["WA"])
	fmt.Printf("%v x %v\n", "TLE", ans["TLE"])
	fmt.Printf("%v x %v\n", "RE", ans["RE"])
}

func Scanner() *bufio.Scanner {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
	return scanner
}

func ReadInt(scanner *bufio.Scanner) int {
	var t string

	if scanner.Scan() {
		t = scanner.Text()
	}

	n, err := strconv.Atoi(t)
	if err != nil {
		log.Fatal(err)
	}

	return n
}

func ReadString(scanner *bufio.Scanner) string {
	var t string

	if scanner.Scan() {
		t = scanner.Text()
	}

	return t
}

// func (ans Answer) String() string {
// 	var ret string
// 	for s, v := range ans {
// 		ret += fmt.Sprintf("%v x %v\n", s, v)
// 	}
// 	return ret
// }

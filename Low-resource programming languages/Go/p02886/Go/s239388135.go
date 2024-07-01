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
	s.Scan()
	ds := s.Text()

	dd := strings.Split(ds, " ")
	dn := make([]int, len(dd))
	for i, d := range dd {
		dn[i], _ = strconv.Atoi(d)
	}

	sum := 0
	for i := 0; i < len(dn); i++ {
		for j := i + 1; j < len(dn); j++ {
			sum += dn[i] * dn[j]
		}
	}

	fmt.Println(sum)
}

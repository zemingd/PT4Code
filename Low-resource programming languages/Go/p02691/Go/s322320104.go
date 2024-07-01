package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

type Member struct {
	Number int
	High   int
}

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()

	var ns []Member
	for i := 1; i <= n; i++ {
		ai := nextInt()
		if ai >= n-1 {
			continue
		}
		ns = append(ns, Member{i, ai})
	}

	var ret int
	for i := 0; i < len(ns)-1; i++ {
		for j := i + 1; j < len(ns); j++ {
			if (ns[j].Number - ns[i].Number) == (ns[i].High + ns[j].High) {
				ret++
			}

		}

	}
	fmt.Println(ret)
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

package main

import (
	"fmt"
	"io"
	"os"
	"sort"
)

type Number struct {
	S int
	C int
}

type Numbers []Number

func (n Numbers) Len() int {
	return len(n)
}

func (n Numbers) Swap(i, j int) {
	n[i], n[j] = n[j], n[i]
}

func (n Numbers) Less(i, j int) bool {
	return n[i].S < n[j].S
}

func run(input io.Reader, output io.Writer) int {
	var n, m int
	fmt.Scanf("%d %d\n", &n, &m)
	sc := make(Numbers, m)
	for i := 0; i < m; i++ {
		fmt.Scanf("%d %d\n", &sc[i].S, &sc[i].C)
	}

	if len(sc) == 0 {
		fmt.Println("0")
		return 0
	}

	sort.Sort(sc)

	if len(sc) > 0 {
		if sc[0].S != 0 && sc[0].C == 0 {
			fmt.Println("-1")
			return 0
		}
	}

	newSC := make(Numbers, 0)
	for i := 0; i < len(sc); i++ {
		if i != 0 && sc[i-1].S == sc[i].S {
			if sc[i-1].C != sc[i].C {
				fmt.Println("-1")
				return 0
			}
		} else {
			newSC = append(newSC, sc[i])
		}
	}

	for i := 0; i < n; i++ {
		found := false
		for _, v := range newSC {
			if v.S == i+1 {
				fmt.Print(v.C)
				found = true
				break
			}
		}
		if !found {
			if i == 0 {
				fmt.Print("1")
			} else {
				fmt.Print("0")
			}
		}
	}
	fmt.Println()

	return 0
}

func main() {
	os.Exit(run(os.Stdin, os.Stdout))
}

package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

func scanInt() int {
	scanner.Scan()
	txt := scanner.Text()
	n, _ := strconv.Atoi(txt)
	return n
}

type Pair struct {
	First  int
	Second int
}

func main() {
	scanner.Split(bufio.ScanWords)

	n := scanInt()
	vs := make([]int, 0, n)
	for i := 0; i < n; i++ {
		vs = append(vs, scanInt())
	}

	areAllSame := true
	for i := 0; i < n; i++ {
		if vs[i] != vs[0] {
			areAllSame = false
			break
		}
	}
	if areAllSame {
		fmt.Println(n / 2)
		return
	}

	oddMap := map[int]int{}
	evenMap := map[int]int{}

	for i := 0; i < n; i++ {
		if i%2 != 0 {
			oddMap[vs[i]]++
		} else {
			evenMap[vs[i]]++
		}
	}

	odd1, odd2 := Pair{}, Pair{}
	even1, even2 := Pair{}, Pair{}

	for key, count := range oddMap {
		if count > odd1.Second {
			odd1.First = key
			odd1.Second = count
		}
	}
	delete(oddMap, odd1.First)
	for key, count := range oddMap {
		if count > odd2.Second {
			odd2.First = key
			odd2.Second = count
		}
	}

	for key, count := range evenMap {
		if count > even1.Second {
			even1.First = key
			even1.Second = count
		}
	}
	delete(evenMap, even1.First)
	for key, count := range evenMap {
		if count > even2.Second {
			even2.First = key
			even2.Second = count
		}
	}

	if odd1.First != even1.First {
		fmt.Println(n - odd1.Second - even1.Second)
		return
	}

	if odd1.Second+even2.Second > odd2.Second+even1.Second {
		fmt.Println(n - odd1.Second - even2.Second)
	} else {
		fmt.Println(n - odd2.Second - even1.Second)
	}
}

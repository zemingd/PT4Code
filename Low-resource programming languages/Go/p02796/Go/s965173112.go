package main

import (
	"fmt"
	"sort"
)

type Robo struct {
	X int32
	L int32
}

func main() {
	var n int32
	fmt.Scanf("%d", &n)

	robo := make([]Robo, n)
	for i := int32(0); i < n; i++ {
		fmt.Scanf("%d %d", &robo[i].X, &robo[i].L)
	}

	if n == 1 {
		fmt.Println("0")
		return
	}

	sort.Slice(robo, func(i, j int) bool { return robo[i].X < robo[j].X })

	if n == 2 {
		if robo[n-2].X-robo[n-2].L < robo[n-1].X+robo[n-1].L {
			fmt.Println("1")
		} else {
			fmt.Println("2")
		}
		return
	}

	f := false
	for {
		fmt.Println(robo)
		for i := int32(1); i < n-1; i++ {
			if robo[i].X-robo[i].L < robo[i-1].X+robo[i-1].L || robo[i+1].X-robo[i+1].L < robo[i].X+robo[i].L {
				robo = remove(robo, i)
				n--
				f = true
				break
			}
		}
		fmt.Println("->", robo)
		if f == false || n == 2 {
			break
		} else {
			f = false
		}
	}

	if n == 2 {
		if robo[n-2].X-robo[n-2].L < robo[n-1].X+robo[n-1].L {
			fmt.Println("1")
		} else {
			fmt.Println("2")
		}
	} else {
		fmt.Println(n)
	}
}

func remove(r []Robo, i int32) []Robo {
	if i >= int32(len(r)) {
		return r
	}
	return append(r[:i], r[i+1:]...)
}

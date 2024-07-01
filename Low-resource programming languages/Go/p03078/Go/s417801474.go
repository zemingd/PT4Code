package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

type Cake struct {
	Type int
	Cost int
	Val  int
}

func nextVals() []int {
	sc.Scan()
	var out []int
	for _, val := range strings.Fields(sc.Text()) {
		num, _ := strconv.Atoi(val)
		out = append(out, num)
	}

	return out
}

func inputCakes(k int) {
	var cakes [][]Cake
	var tmpCakes []Cake

	for typeInt := 0; typeInt < 3; typeInt++ {
		vals := nextVals()
		sort.Slice(vals, func(i, j int) bool {
			return vals[i] > vals[j]
		})
		base := vals[0]
		vals = vals[1:]
		cakes = append(cakes, []Cake{})
		cakes[typeInt] = append(cakes[typeInt], Cake{
			Type: typeInt,
			Cost: 0,
			Val:  base,
		})
		for _, val := range vals {
			tmpCakes = append(tmpCakes, Cake{
				Type: typeInt,
				Cost: base - val,
				Val:  val,
			})
		}
	}

	sort.Slice(tmpCakes, func(i, j int) bool {
		return tmpCakes[i].Cost < tmpCakes[j].Cost
	})

	if len(tmpCakes) > k {
		tmpCakes = tmpCakes[:k]
	}

	for _, cake := range tmpCakes {
		typeInt := cake.Type
		cakes[typeInt] = append(cakes[typeInt], cake)
	}

	choices := []int{}
	for _, cake0 := range cakes[0] {
		for _, cake1 := range cakes[1] {
			for _, cake2 := range cakes[2] {
				choices = append(choices, cake0.Val+cake1.Val+cake2.Val)
			}
		}
	}

	sort.Slice(choices, func(i, j int) bool {
		return choices[i] > choices[j]
	})

	for i := 0; i < k; i++ {
		fmt.Println(choices[i])
	}
}

func main() {
	args := nextVals()
	k := args[3]
	inputCakes(k)
}
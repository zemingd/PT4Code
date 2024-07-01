package main

import (
	"fmt"
	"math"
)

type sugarWater struct {
	sugar, water int
}

var (
	checked          = map[sugarWater]struct{}{}
	a, b, c, d, e, f int
	ans              sugarWater
)

func dfs(sugar, water int) {
	if sugar+water > f || 100*sugar > e*water {
		return
	}
	if _, in := checked[sugarWater{sugar, water}]; in {
		return
	}
	if sugar*ans.water >= water*ans.sugar {
		ans = sugarWater{sugar, water}
	}
	checked[sugarWater{sugar, water}] = struct{}{}

	dfs(sugar, water+100*a)
	dfs(sugar, water+100*b)
	dfs(sugar+c, water)
	dfs(sugar+d, water)
}

func main() {
	ans = sugarWater{0, math.MaxInt32}
	fmt.Scan(&a, &b, &c, &d, &e, &f)

	dfs(0, 100*a)
	dfs(0, 100*b)

	fmt.Println(ans.sugar+ans.water, ans.sugar)
}

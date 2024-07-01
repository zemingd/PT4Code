package main

import (
	"fmt"
	"math"
	"sort"
)

type Ingredient struct {
	Value float64
}

type Ingredients []Ingredient

func (ing Ingredients) Len() int {
	return len(ing)
}

func (ing Ingredients) Swap(i, j int) {
	ing[i], ing[j] = ing[j], ing[i]
}

func (ing Ingredients) Less(i, j int) bool {
	return ing[i].Value < ing[j].Value
}

func main() {
	var n int
	fmt.Scan(&n)

	nums := scanNums(n)
	var ingredients Ingredients
	for _, num := range nums {
		ingredients = append(ingredients, Ingredient{Value: float64(num)})
	}

	sort.Sort(ingredients)

	current := ingredients[0].Value

	if len(ingredients) > 1 {
		for i, ing := range ingredients {
			if i == 0 {
				continue
			}

			current = (current + ing.Value) / 2.0
		}
	}

	fmt.Println(current)
}

func scanNums(len int) (nums []int) {
	var num int
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}

func scanStrings(len int) (strings []string) {
	var str string
	for i := 0; i < len; i++ {
		fmt.Scanf("%s", &str)
		strings = append(strings, str)
	}
	return
}

func abs(a int) int {
	return int(math.Abs(float64(a)))
}

func pow(p, q int) int {
	return int(math.Pow(float64(p), float64(q)))
}

func min(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton min() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Min(float64(res), float64(nums[i])))
	}
	return res
}

func max(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton max() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Max(float64(res), float64(nums[i])))
	}
	return res
}

func strSearch(a []string, b string) bool {
	for i := 0; i < len(a); i++ {
		if a[i] == b {
			return true
		}
	}
	return false
}

package main

import "fmt"

type person struct {
	m map[int]int
}

func isok(persons []person, v []int, i int) bool {
	p := &persons[i]
	pv := v[i]
	for j := 0; j < i; j++ {
		if pv > 0 {
			// 正直者と仮定した場合は証言が矛盾しないことをチェック。
			if p.m[j] != v[j] {
				return false
			}
		}

		if v[j] > 0 {
			q := &persons[j]
			if q.m[i] != v[i] {
				return false
			}
		}
	}
	return true
}

func resolve(persons []person, v []int, i int) int {
	if i == len(v) {
		ans := 0
		for _, b := range v {
			if b > 0 {
				ans++
			}
		}
		// fmt.Printf("%+v\n", v)
		return ans
	}

	v[i] = 1
	ans0 := 0
	if isok(persons, v, i) {
		ans0 = resolve(persons, v, i+1)
	}

	v[i] = 0
	ans1 := 0
	if isok(persons, v, i) {
		ans1 = resolve(persons, v, i+1)
	}

	if ans0 > ans1 {
		return ans0
	}
	return ans1
}

func main() {
	var np int
	fmt.Scanf("%d\n", &np)

	persons := make([]person, np, np)
	for i := 0; i < np; i++ {
		var nm int
		fmt.Scanf("%d\n", &nm)
		person := &persons[i]
		person.m = make(map[int]int)
		for j := 0; j < nm; j++ {
			var p, m int
			fmt.Scanf("%d %d\n", &p, &m)
			person.m[p-1] = m
		}
	}

	v := make([]int, np, np)
	fmt.Print(resolve(persons, v, 0))
}
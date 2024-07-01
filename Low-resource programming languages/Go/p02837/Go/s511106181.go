package main

import "fmt"

type person struct {
	m map[int]int
}

func isok(persons []person, v []bool, i int) bool {
	p := &persons[i]
	pv := v[i]
	for j := 0; j < i; j++ {
		q := &persons[j]
		qv := v[j]

		for pp, pm := range p.m {
			for qp, qm := range q.m {
				if pp != qp {
					continue
				}
				if pm == qm {
					continue
				}
				if pv && qv {
					return false
				}
			}
		}

	}
	return true
}

func resolve(persons []person, v []bool, i int) int {
	if i == len(v) {
		ans := 0
		for _, b := range v {
			if b {
				ans++
			}
		}
		return ans
	}

	v[i] = true
	ans0 := 0
	if isok(persons, v, i) {
		ans0 = resolve(persons, v, i+1)
	}

	v[i] = false
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
			person.m[p] = m
		}
	}

	v := make([]bool, np, np)
	fmt.Print(resolve(persons, v, 0))
}
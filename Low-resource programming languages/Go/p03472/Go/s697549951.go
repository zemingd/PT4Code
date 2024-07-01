package main

import (
	"fmt"
	"sort"
)

type sword struct {
	id, a, b int
}

type swords []sword

func (s swords) Len() int {
	return len(s)
}
func (s swords) Swap(i, j int) {
	s[i], s[j] = s[j], s[i]
}

type byAthenB struct {
	swords
}
type byBthenA struct {
	swords
}

func (a byAthenB) Less(i, j int) bool {
	if a.swords[i].a < a.swords[j].a {
		return true
	} else if a.swords[i].a == a.swords[j].a {
		if a.swords[i].b > a.swords[j].b {
			return true
		}
	}
	return false
}
func (b byBthenA) Less(i, j int) bool {
	if b.swords[i].b < b.swords[j].b {
		return true
	} else if b.swords[i].b == b.swords[j].b {
		if b.swords[i].a < b.swords[j].a {
			return true
		}
	}
	return false
}

func main() {
	var N, H int
	fmt.Scan(&N, &H)
	swords := make([]sword, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&swords[i].a, &swords[i].b)
		swords[i].id = i
	}
	// 斬りつけるための刀はaでソートして最大の剣のうち、投げつけ威力の小さいもの
	sort.Sort(byAthenB{swords})
	A := swords[len(swords)-1].a
	Aid := swords[len(swords)-1].id
	B := swords[len(swords)-1].b

	// 投げる価値のある剣を選ぶ
	Bs := make([]int, 0)
	sort.Sort(sort.Reverse(byBthenA{swords}))
	for i := 0; i < N; i++ {
		if swords[i].b >= A && swords[i].id != Aid {
			Bs = append(Bs, swords[i].b)
		}
	}
	// 投げられる剣は最初に全て投げてしまって良い
	ans := 0
	for i := 0; i < len(Bs); i++ {
		H -= Bs[i]
		ans++
		if H <= 0 {
			fmt.Println(ans)
			return
		}
	}
	// まだHPが残っていれば、残った剣で斬る（最後に投げる分を引いておく）
	if B > A {
		H -= B
		ans++
	}
	ans += ((H + A - 1) / A)
	fmt.Println(ans)
}

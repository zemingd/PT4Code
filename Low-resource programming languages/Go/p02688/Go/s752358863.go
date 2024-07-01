package main

import "fmt"

type sunuke struct {
	sweets []int
}

func newSunuke(sweetsMax int) *sunuke {
	return &sunuke{
		sweets: make([]int, 0, sweetsMax),
	}
}

func (s *sunuke) feed(sweetsID int) {
	s.sweets = append(s.sweets, sweetsID)
}

func main() {
	var n, k int
	fmt.Scanf("%d%d", &n, &k)

	sunukes := make([]*sunuke, n)

	for i := 0; i < n; i++ { // すぬけn-iを作成
		sunukes[i] = newSunuke(k)
	}

	for i := 0; i < k; i++ { // お菓子の種類分だけループ
		var d int
		fmt.Scanf("%d", &d)      // お菓子iを配る人数を取得
		for j := 0; j < d; j++ { //お菓子iを配る対象を取得
			var x int
			fmt.Scanf("%d", &x)
			sunukes[x-1].feed(j)
		}
	}

	var count int = 0
	for i := 0; i < n; i++ {
		if len(sunukes[i].sweets) == 0 {
			count++
		}
	}
	fmt.Println(count)
}

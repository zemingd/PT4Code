package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextFloat64() float64 {
	sc.Scan()
	i, e := strconv.ParseFloat(sc.Text(), 64)
	if e != nil {
		panic(e)
	}
	return i
}

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func sum(x []int) int {
	var i int
	for _, v := range x {
		i += v
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	//sc.Buffer(nil, 100000000)

	H, W := nextInt(), nextInt()

	s := make([][]int, H)

	queues := [][]int{}

	for i := 0; i < H; i++ {
		s[i] = make([]int, W)
		vs := nextString()
		for j, v := range vs {
			if v == '#' {
				s[i][j] = 1
				queues = append(queues, []int{i, j, 0})
			} else {
				s[i][j] = 0
			}
		}
	}

	ans := 0
	for len(queues) > 0 {

		queue := queues[0]

		wp, hp, cnt := queue[0], queue[1], queue[2]

		dirW := []int{1, -1, 0, 0}
		dirH := []int{0, 0, 1, -1}
		for i := 0; i < 4; i++ {
			thp := hp + dirH[i]
			twp := wp + dirW[i]
			if thp < 0 || thp >= H {
				continue
			}
			if twp < 0 || twp >= W {
				continue
			}
			if s[thp][twp] == 1 {
				continue
			}
			s[thp][twp] = 1
			queues = append(queues, []int{thp, twp, cnt + 1})
		}

		if cnt > ans {
			ans = cnt
		}
		queues = queues[1:]
	}
	fmt.Println(ans)

}

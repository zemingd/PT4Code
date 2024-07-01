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

func main() {
	sc.Split(bufio.ScanWords)
	//sc.Buffer(nil, 100000000)

	H, W := nextInt(), nextInt()

	s := make([][]int, H)

	blacks := [][]int{}

	for i := 0; i < H; i++ {
		s[i] = make([]int, W)
		vs := nextString()
		for j, v := range vs {
			if v == '#' {
				s[i][j] = 1
				blacks = append(blacks, []int{i, j})
			} else {
				s[i][j] = 0
			}
		}
	}

	ans := 0
	for len(blacks) < H*W {
		done := make(map[int]map[int]bool)
		newBlack := [][]int{}
		for _, black := range blacks {
			wp, hp := black[0], black[1]

			dirW := []int{0, 1, -1, 0, 0}
			dirH := []int{0, 0, 0, 1, -1}
			for i := 0; i < 3; i++ {
				thp := hp + dirH[i]
				twp := wp + dirW[i]
				if thp < 0 || thp >= H {
					continue
				}
				if twp < 0 || twp >= W {
					continue
				}
				if _, ok := done[thp]; !ok {
					done[thp] = make(map[int]bool)
				}
				if done[thp][twp] {
					continue
				}
				done[thp][twp] = true
				newBlack = append(newBlack, []int{thp, twp})
			}
		}
		blacks = newBlack
		ans += 1
	}
	fmt.Println(ans)

}

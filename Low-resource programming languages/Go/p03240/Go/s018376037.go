package main

import (
	"fmt"
	"os"
)

func main() {
	var num int
	var pos [][]int

	fmt.Scan(&num)
	for i := 0; i < num; i++ {
		p := scanNums(3)
		pos = append(pos, p)
	}

	debug("pos = %v\n", pos)
	c := solve(pos)
	debug("center = %v\n", c)
	fmt.Printf("%d %d %d\n", c[0], c[1], c[2])
}

/**
 * 総当たりで求める
 * pos = [x, y, h]のslice
 * 0 <= x, y <= 100
 * 0 <= h <= 1e+09
 */
func solve(pos [][]int) []int {
	cx := -10 //中心のx,y座標
	cy := -10
	ch := -10
CX:
	for x := 0; x <= 100; x++ {
	CY:
		for y := 0; y <= 100; y++ {
			ch = -10 //中心の高さ
			centerFound := false
			//POS:
			for _, p := range pos {
				px := p[0]
				py := p[1]
				ph := p[2]
				d := absInt(px-x) + absInt(py-y)
				h := d + ph
				if ch < 0 {
					ch = h
				} else if h != ch {
					centerFound = false
					continue CY
				} else {
					centerFound = true
				}
			}
			if centerFound {

				cx = x
				cy = y
				break CX
			}
		}
	}
	return []int{cx, cy, ch}
}

/**
 * １行に空白区切りで数字を読み込み
 */
func scanNums(len int) (nums []int) {
	nums = make([]int, len)
	for i := 0; i < len; i++ {
		fmt.Scan(&nums[i])
	}
	return
}

//** DEBUG **/
const DEBUG_ENABLE = false

func debug(format string, a ...interface{}) (n int, err error) {
	if DEBUG_ENABLE {
		return fmt.Fprintf(os.Stdout, format, a...)
	} else {
		return 0, nil
	}
}

func absInt(a int) int {
	if a >= 0 {
		return a
	} else {
		return -a
	}
}

package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	buf := make([]byte, 0)
	sc.Buffer(buf, 1000000009)
	sc.Split(bufio.ScanWords)
	h, w := oneInt(), oneInt()
	strs := scanStrings(h)

	board := make([][]int, h)

	for i := 0; i < h; i++ {
		rs := []rune(strs[i])
		for _, r := range rs {
			if r == '.' {
				board[i] = append(board[i], 0)
			} else {
				board[i] = append(board[i], -1)
			}
		}
	}

	//fmt.Printf("#%v\n", board)

	//まずは横に見る
	ans := calc(h, w, board)

	//fmt.Printf("#%v\n", board)

	fmt.Println(ans)

}

func calc(h int, w int, board [][]int) int {
	for y := 0; y < h; y++ {
		for x := 0; x < w; x++ {
			if board[y][x] != 0 {
				continue
			}

			if x == w-1 && board[y][x] == 0 {
				board[y][x] = 1
				continue
			}

			yoko := 1

			//fmt.Println(y, x, yoko)
			for board[y][x+yoko] == 0 {
				yoko++
				if x+yoko > w-1 {
					break
				}
			}

			//fmt.Println(yoko)
			for i := 0; i < yoko; i++ {
				board[y][x+i] = yoko
			}
			x += yoko - 1
		}
	}
	//fmt.Printf("#%v\n", board)
	ans := 0
	//縦に見る
	for x := 0; x < w; x++ {
		for y := 0; y < h; y++ {
			//fmt.Printf("%d,%d, #%v\n", y, x, board)
			if board[y][x] == -1 {
				continue
			}

			if y == h-1 {
				ans = max(ans, board[y][x])
				continue
			}

			tate := 0
		loop:
			for board[y+tate][x] != -1 {
				tate++
				//fmt.Println(y, x, tate)
				if y+tate > h-1 {
					break loop
				}
			}

			for i := 0; i < tate; i++ {
				board[y+i][x] += tate - 1
				ans = max(ans, board[y+i][x])
			}

			y += tate - 1
		}
	}
	//fmt.Printf("#%v\n", board)
	return ans
}

func oneInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func oneStr() string {
	sc.Scan()
	return sc.Text()
}

func scanNums(len int) (nums []int) {
	for i := 0; i < len; i++ {
		nums = append(nums, oneInt())
	}
	return nums
}

func scanStrings(len int) (strs []string) {
	for i := 0; i < len; i++ {
		strs = append(strs, oneStr())
	}
	return strs
}

func abs(a int) int {
	if a >= 0 {
		return a
	} else {
		return -a
	}
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

func sortAsc(a []int) []int {
	sort.Ints(a)
	return a
}

func sortDesc(a []int) []int {
	sort.Sort(sort.Reverse(sort.IntSlice(a)))
	return a
}

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func lcm(a, b int) int {
	if a == 0 && b == 0 {
		return 0
	}
	return a * b / gcd(a, b)
}

func cumSum(nums []int) []int {
	sums := []int{0}

	for i := 0; i < len(nums); i++ {
		sums = append(sums, sums[i]+nums[i])
	}
	return sums
}

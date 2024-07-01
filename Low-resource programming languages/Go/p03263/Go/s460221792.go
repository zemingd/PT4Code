package main

import (
	"bufio"
	"bytes"
	"fmt"
	"log"
	"os"
	"strconv"
)

var outCnt int
var out bytes.Buffer

func main() {
	log.SetFlags(log.Lshortfile)
	nextReader = NewScanner()
	H := nextInt()
	W := nextInt()
	var f Filed
	f.mas = make([][]int, H)
	for i := 0; i < H; i++ {
		f.mas[i] = nextInts(W)
	}
	cntCoins := 0
	for i := 0; i < H; i++ {
		cntCoins += sum(f.mas[i])
	}
	// log.Println("mas==", H*W, "coins=", cntCoins, "target=", min(cntCoins/2, H*W))
	// log.Println("mas coins is 2")
	var ctlr Answer
	for i := H - 1; i >= 0; i-- {
		for j := W - 1; j >= 0; j-- {
			// log.Println("y=", i, "x=", j, f.mas[i][j])
			for f.mas[i][j] != 0 {
				if i == 0 && j == 0 {
					break
				} else if j == 0 {
					f.Move(i, j, i-1, j)
					ctlr.Add(i, j, i-1, j)
				} else {
					f.Move(i, j, i, j-1)
					ctlr.Add(i, j, i, j-1)
				}
			}
		}
	}
	// log.Println(f.String())
	for i := 0; i < H; i++ {
		for j := 0; j < W; j++ {
			for f.mas[i][j] > 2 {
				if i == H-1 && j == W-1 {
					break
				} else if i < H-1 && j == W-1 {
					f.Move(i, j, i+1, j)
				} else if i < H-1 && j == 0 {
					f.Move(i, j, i+1, j)
				} else if j < W-1 {
					if i%2 == 0 {
						if i == H-1 && j+1 == W {
							break
						}
					} else {
						if i == H-1 && j-1 == -1 {
							break
						}
						f.Move(i, j, i, j-1)
					}
				} else {
					log.Println("error", i, j)
					break
				}
			}
		}
	}
	// fmt.Println(f.String())
	// fmt.Println(ctlr.String())
	fmt.Println(outCnt)
	fmt.Print(out.String())
}

type Filed struct {
	mas [][]int
}

func (f *Filed) Move(a, b, c, d int) {
	// log.Println("Move", a, b, c, d)
	out.WriteString(fmt.Sprintf("%d %d %d %d\n", a, b, c, d))
	outCnt++
	if f.mas[a][b] <= 0 {
		panic("error")
	}
	f.mas[a][b]--
	f.mas[c][d]++
}

func (f Filed) String() string {
	var out bytes.Buffer
	for i := 0; i < len(f.mas); i++ {
		out.WriteString(fmt.Sprintln(f.mas[i]))
	}
	return out.String()
}

type Ans struct {
	y1, x1, y2, x2 int
}

func (a Ans) String() string {
	return fmt.Sprintln(a.y1, a.x1, a.y2, a.y2)
}

type Answer struct {
	s []Ans
}

func (self Answer) Add(a, b, c, d int) {
	self.s = append(self.s, Ans{a, b, c, d})
}

func (self Answer) String() string {
	var out bytes.Buffer
	for i := 0; i < len(self.s); i++ {
		out.WriteString(self.s[i].String())
	}
	return out.String()
}

func max(a ...int) int {
	r := a[0]
	for i := 0; i < len(a); i++ {
		if r < a[i] {
			r = a[i]
		}
	}
	return r
}
func min(a ...int) int {
	r := a[0]
	for i := 0; i < len(a); i++ {
		if r > a[i] {
			r = a[i]
		}
	}
	return r
}
func sum(a []int) (r int) {
	for i := range a {
		r += a[i]
	}
	return r
}
func minmax(a, b int) (int, int) {
	if a > b {
		return b, a
	}
	return a, b
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

var nextReader func() string

func NewScanner() func() string {
	r := bufio.NewScanner(os.Stdin)
	r.Buffer(make([]byte, 1024), int(1e+11))
	r.Split(bufio.ScanWords)
	return func() string {
		r.Scan()
		return r.Text()
	}
}
func nextString() string {
	return nextReader()
}
func nextInt64() int64 {
	v, _ := strconv.ParseInt(nextReader(), 10, 64)
	return v
}
func nextInt() int {
	v, _ := strconv.Atoi(nextReader())
	return v
}
func nextInts(n int) []int {
	r := make([]int, n)
	for i := 0; i < n; i++ {
		r[i] = nextInt()
	}
	return r
}
func nextFloat64() float64 {
	f, _ := strconv.ParseFloat(nextReader(), 64)
	return f
}

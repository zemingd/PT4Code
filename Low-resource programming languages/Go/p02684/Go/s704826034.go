package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

//var warped [250000]int
//var cyc [250000]int

func main() {
	scanInit()

	n := nextInt()

	if n == 1 {
		fmt.Println(1)
		return
	}
	k := nextInt()
	al := make([]int, n+1)
	warped := make([]int, n+1)
	cyc := make([]int, n+1)

	for i := 1; i <= n; i++ {
		al[i] = nextInt()
	}

	now := 1
	warped[1] = 1
	cyc[1] = 1
	cycstartIdx := -1
	cycstartOffset := 1
	clen := 0
	for {
		if cycstartIdx != -1 {
			break
		}

		if warped[al[now]] == 0 {
			cycstartOffset++
			warped[al[now]] = cycstartOffset
			cyc[cycstartOffset] = al[now]
			now = al[now]
		} else {
			cycstartNum := al[now]
			//fmt.Println("DBG cyc detected cycstartNum=", cycstartNum, " warp=", warped) //! DBG

			for j := 0; j < cycstartOffset; j++ {
				if cyc[j] == cycstartNum {
					cycstartIdx = j
				}
			}
			clen = cycstartOffset - cycstartIdx + 1
			cycstartOffset -= clen
			//fmt.Println("DBG cyc detected cycstartNum=", cycstartNum, " Idx=", cycstartIdx) //! DBG
			//fmt.Println("DBG cyc detected Offset=", cycstartOffset)
			break //! DBG
		}

	}
	//fmt.Println(cycstartIdx, cycstartOffset, " clen=", clen) //! DBG
	//fmt.Println("DBG: ", warped, cyc)                        //! DBG

	ans := 0
	if k < cycstartOffset {
		ans = cyc[1+k]
	} else {
		ans = cyc[1+cycstartOffset+(k-cycstartOffset)%clen]
	}

	fmt.Println(ans)
}

// ---- readfunc
var sc = bufio.NewScanner(os.Stdin)

func scanInit() {
	const cap = 200 * 1024 // default=64*1024
	var buf = make([]byte, cap)
	sc.Buffer(buf, cap)
	sc.Split(bufio.ScanWords)
	return
}
func nextInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}
func nextStr() string {
	sc.Scan()
	return sc.Text()
}

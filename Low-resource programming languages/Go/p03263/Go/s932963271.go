// うっかり解説みてしまったがそれはそうという感じ
// 全部偶数にできるか、ひとつだけ奇数が残るか
// こういうのは全部巡ればいい、という学び
// 出力、行が必要というのを忘れていたのでFlushして横着した

package main

import (
	"bufio"
	"fmt"
	"os"
)

var out = bufio.NewWriter(os.Stdout)

func main() {
	defer out.Flush() // !!!!caution!!!! you must use Fprint(out, ) not Print()
	var H, W int
	fmt.Scan(&H, &W)
	T := make([][]int, H)
	for i := 0; i < H; i++ {
		T[i] = make([]int, W)
		for j := 0; j < W; j++ {
			fmt.Scan(&T[i][j])
		}
	}
	end := 0
	count := 0
	for i := 0; i < H; i++ {
		for j := 0; j < W; j++ {
			if end == H*W-1 {
				break
			}
			end++
			if T[i][j]%2 == 0 {
				continue
			}
			count++
			if i%2 == 1 {
				k := W - j
				if k == 0 {
					fmt.Fprintln(out, i+1, k+1, i+2, k+1)
					T[i+1][k]++
				} else {
					fmt.Fprintln(out, i+1, k+1, i+1, k)
					T[i][k-1]++
				}
				// T[i][k-1]--
			} else {
				if j == W-1 {
					fmt.Fprintln(out, i+1, j+1, i+2, j+1)
					T[i+1][j]++
				} else {
					fmt.Fprintln(out, i+1, j+1, i+1, j+2)
					T[i][j+1]++
				}
				// T[i][j]--
			}
		}
	}
	// for _, t := range T {
	// 	fmt.Println(t)
	// }
	fmt.Println(count)
}

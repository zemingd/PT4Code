// 手を動かせばわかる Sの文字の登場する場所を保存してTを頭からみてどれだけ動けばいいかをアレする
// 一周する場合もなんかできた

package main
import (
	"fmt"
	"sort"
)

func main(){
	var S, T string
	fmt.Scan(&S, &T)
	SM := make(map[string][]int)
	for i, c := range []rune(S){
		SM[string(c)] = append(SM[string(c)], i+1)
	}
	ans := 0
	cur := 0
	for _, c := range []rune(T){
		x := string(c)
		if _, ok := SM[x]; !ok{
			fmt.Println(-1)
			return
		}
		idx := sort.Search(len(SM[x]), func(j int)bool{
			return cur <SM[x][j]
		})
		if idx == len(SM[x]){
			// 一周して一番最初に登場するところ
			ans += (len(S) - cur) + SM[x][0]
			cur = SM[x][0]
		}else{
			// 今いるところより先にいるのでそこまでの距離
			ans += SM[x][idx]-cur
			cur = SM[x][idx]
		}
	}
	fmt.Println(ans)
}
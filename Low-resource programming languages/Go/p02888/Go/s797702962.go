// a,bを決めてcをにぶたんする cを最長とする
// sort.Searchのせいで4時間くらいバグらせた （対処法不明
package main
import (
	"fmt"
	"sort"
)
func main(){
	var N int
	fmt.Scan(&N)
	L := make([]int, N)
	for i:=0; i<N; i++{
		fmt.Scan(&L[i])
	}
	sort.Ints(L)
	ans := 0
	for a:=0; a<N-2; a++{
		for b:=a+1; b<N-1; b++{
			// cを最長とおいたのでb以上（for的にL[b]>=L[a]なので）

			// なぜかうまくいかない 多分以下のせい どこが悪いのか不明 ジャッジかパッケージがバグってるとしか思えない_
			// c := sort.Search(N, func(j int)bool{
			// 	if L[a]+L[b] < L[j]{
			// 		return true
			// 	}
			// 	return false
			// })
			// searchIntsってのがあったので使ってみる
			c := sort.SearchInts(L, L[a]+L[b])
			if c > b{
				ans += (c-1-b)
			}
		}
	}
	fmt.Println(ans)
}
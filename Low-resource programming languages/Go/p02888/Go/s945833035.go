// a,bを決めてcをにぶたんする cを最長とする
// golangのsort.Searchのせいで4時間くらいバグらせた
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
			c := sort.Search(N, func(j int)bool{
				if L[a]+L[b] < L[j]{
					return true
				}
				return false
			})
			ans += (c-1-b)
		}
	}
	fmt.Println(ans)
}
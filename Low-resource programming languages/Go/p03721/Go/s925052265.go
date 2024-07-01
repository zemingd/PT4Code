package main

import (
	"fmt"
	"sort"
)

func main(){
	var N,K int
	var a,b int
	fmt.Scanf("%d %d",&N,&K)
	dic := map[int]int{}
	for i:=0;i<N;i++{
		fmt.Scanf("%d %d",&a,&b)
		dic[a] += b
	}
	keys := []int{}
	for key := range dic{
		keys = append(keys,key)
	}
	sort.Slice(keys, func(i, j int) bool {
		return keys[i] < keys[j]
	})
	count := 0
	for _,key := range keys{
		count += dic[key]
		if count >= K{
			fmt.Println(key)
			return
		}
	}
}
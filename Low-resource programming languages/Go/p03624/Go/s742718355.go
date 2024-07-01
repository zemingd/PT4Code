package main

import (
	"fmt"
	"sort"
)

func main() {
	var s string
	fmt.Scan(&s)
	
	alp := []string{"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"}

	lists := make(map[string]bool,26)

	for i := 0; i< len(alp); i++ {
		lists[alp[i]] = false
    }
	
	for i := 0; i < len(s); i++ {
		lists[string(s[i])] = true
	}
	
	var ans []string
	for st,bl := range lists {
		if !bl {
			ans = append(ans,st)
		}
	}
	
	if len(ans) == 0 {
		fmt.Println("None")
		return
	}
	sort.Strings(ans)
	fmt.Println(ans[0])
}
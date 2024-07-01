package main
 
import (
	"fmt"
	"sort" 
)
 
func main() {
 
	var k, n, aa  int 
	a := [] int{}
	bef := [] int{}
	aft := [] int{}  
 
	fmt.Scan(&k,&n)
	for i := 0 ; i < n ; i ++{ 
		fmt.Scan(&aa)
		a = append(a, aa)
	}
	sub := k / 2 

	for i, key := range a {
		if sub <= key {
			bef = a[0:i]
			aft = a[i:n]
			break 
		} 
		
	}
	sort.Sort(sort.IntSlice(bef))
	sort.Sort(sort.IntSlice(aft))	
	beflen := len(bef)
	aftlen := len(aft)
	aaa :=aftlen- 1
	bbb := beflen- 1
	hoge := aft[ aaa: aftlen]
	huga := bef[ bbb: beflen]
	fmt.Println(hoge[0]-huga[0])
 
}
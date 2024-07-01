package main

import (
	"fmt"
	"strconv"
	"strings"
)


func validate(s string) bool{
	i := strings.IndexAny(s,"7")
	j := strings.IndexAny(s,"5")
	k := strings.IndexAny(s,"'3")
	return i>=0 && j >=0 && k>= 0

}
func get(a string) (ans []string){
	if(len(a)>9){
		return []string{}
	}

	return append(append(append(get(a+"7"),get(a+"5")...), get(a+"3")...),a)
}
func main() {
	var N int;
	fmt.Scan(&N)
	ans := 0
	for _, value := range get("") {
		if !validate(value){
			continue
		}
		if v,_ := strconv.Atoi(value); v<= N{
			//fmt.Println(v)
			ans++
		}
	}
	fmt.Println(ans)


}

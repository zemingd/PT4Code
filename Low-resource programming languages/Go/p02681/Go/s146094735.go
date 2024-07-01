package main

import(
	"fmt"
)

func main(){
	var ids, idt string
	fmt.Scan(&ids, &idt)
	if len(ids)+1 == len(idt) && idt[0:len(idt)-1] == ids {
		fmt.Println("Yes")
	}else{
		fmt.Println("No")
	}
}
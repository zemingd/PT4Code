package main

import (
    "fmt"
    "bufio"
    "os"
    "strconv"
)
var sc = bufio.NewScanner(os.Stdin)
func NextString()string{
    sc.Scan()
    return sc.Text()
}

func NextInt ()int{
	i,e:=strconv.Atoi(NextString())
	if e != nil {
		panic(e)
	}
	return int(i)
}
func main(){
	// Your code here!
	sc.Split(bufio.ScanWords)
	r:=NextInt()
	fmt.Println(3*r*r)
    
}
package main

import "fmt"
import "strings"
import "strconv"
import "bufio"
import "os"
var sc = bufio.NewScanner(os.Stdin)

func swap(a, b int)(int, int){
    return b, a 
}

func main(){

    var n []int
    var s string
    var words []string
    
    
    if sc.Scan() {
        s = sc.Text()
    }
    //s = "1 9 4 2"    

    words = strings.Fields(s) 

    for _, v := range words{
        val, _ := strconv.Atoi(v) 
        n = append(n, val) 
    }
 
    for i:= 0; i < len(n) - 1; i++ {
        for j := i + 1 ; j < len(n) ; j++{
           if n[i] > n[j]{
                n[i], n[j] = swap(n[i], n[j])
           }
        }
    } 
    
    for _, v := range n{
	fmt.Printf("%d ", v)
    }

}

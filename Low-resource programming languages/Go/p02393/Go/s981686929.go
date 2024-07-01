package main

import "fmt"
//import "strconv"

func swap(a, b int)(int, int){
    return b, a 
}

func main(){

    var n []int
    var a int


   
    for fmt.Scanf("%d", &a); a!='\n' {
        n = append(n, a) 
    }
 
    for i:= 0; i < len(n) - 1; i++ {
        for j := i + 1 ; j < len(n) ; j++{
           if n[i] > n[j]{
                n[i], n[j] = swap(n[i], n[j])
           }
        }
    } 
    
    fmt.Println(n[0], n[1], n[2])


}

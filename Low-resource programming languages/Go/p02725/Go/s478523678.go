package main
import "fmt"
func main(){
    // Your code here!
    var n, m int
    fmt.Scan(&n, &m)
    
    t := make([]int, m)
    for i := 0; i < m; i++ {
         fmt.Scan(&t[i])
    }

    var tmp int
    for i := 0; i<m; i++{
        if i == 0{
            tmp = t[m-1] - t[i]
        }else{
            if tmp > (t[m-1] - t[i] + n - t[m-1] + t[i-1]){
                tmp = t[m-1] - t[i] + n - t[m-1] + t[i-1]
            }
        }
    }
    fmt.Println(tmp)
}

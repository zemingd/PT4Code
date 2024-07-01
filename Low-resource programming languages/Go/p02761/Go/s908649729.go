    package main
         
    import "fmt"
     
     
    func main() {
    	var n, m int
        fmt.Scan(&n, &m)
        s := make([]int, m, m)
        c := make([]int, m, m)
        for i := 0; i < m; i++ {
            fmt.Scan(&s[i], &c[i])
        }
        num := make([]int, n, n)
        for i := range s {
            num[s[i]-1] = c[i]
        }
        
      if num[0] == 0 && len(num) > 0 {
            fmt.Println("-1")
            return 
        }
        ans := ""
        for _, v := range num {
            ans += fmt.Sprintf("%d", v)
        }
        fmt.Println(ans)
    }
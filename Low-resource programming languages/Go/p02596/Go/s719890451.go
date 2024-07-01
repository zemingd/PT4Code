package main
 
func main() {
  var x int
  var y []int = [7, 77, 777, 7777, 77777, 777777]
	
  fmt.Scan(&x)
  for i, v := range y {
    if (v / x) == 0 {
      fmt.Println(i)
    } else {
      fmt.Println(-1)
    }
}
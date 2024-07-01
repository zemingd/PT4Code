package main

func main() {
  var a, b, t int
  fmt.Scanf("%d %d %d", &a, &b, &t)
  
  c := t/a
  var tt, bisAmount int
  for i := 1; tt < c ; i++ {
    tt += i
    bisAmount += b
  }
  fmt.Println(b)
}
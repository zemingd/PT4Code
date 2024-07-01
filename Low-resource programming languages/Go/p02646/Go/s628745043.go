func main() {
	var a, b, v, w int64
	var l, i int64
	var t float64
	_, _ = fmt.Scan(&a, &v)
	_, _ = fmt.Scan(&b, &w)
	_, _ = fmt.Scan(&t)
	l = b - a
	i = v - w
	t = math.Abs(t)

	if l <= int64(t)*i {
		fmt.Println("YES")
	}else {
		fmt.Println("NO")
	}
}
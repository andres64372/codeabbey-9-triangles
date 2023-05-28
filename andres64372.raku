sub sort(@array, $cont, $max){
    if $cont < $max {
        if @array[$cont] > @array[$cont + 1] {
            my $aux = @array[$cont];
            @array[$cont] = @array[$cont + 1];
            @array[$cont + 1] = $aux;
        } 
        @array = sort(@array, $cont + 1, $max);
    } 
    return @array
} 

my @assertion;

for 'DATA.lst'.IO.lines -> $line {
    my @triangle = $line.split(' ').map(*.Int);
    if @triangle.elems == 3 {
        @triangle = sort(@triangle, 0, 2);
        @triangle = sort(@triangle, 0, 1);
        if @triangle[2] < @triangle[0] + @triangle[1] {
            @assertion.push("1");
        }
        else {
            @assertion.push("0");
        }
         
    }
}

say @assertion.join(' ');
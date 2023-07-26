<?php
function sum_divisors($n) {
    $sum = 0;
    for ($i = 1; $i <= sqrt($n); $i++) {
        if ($n % $i == 0) {
            $sum += $i;
            if ($i != 1 && $n / $i != $i) {
                $sum += $n / $i;
            }
        }
    }
    return $sum;
}

function find_amicable_numbers($m) {
    $amicable_numbers = array();
    for ($i = 1; $i <= $m; $i++) {
        $sum_div_i = sum_divisors($i);
        if ($sum_div_i > $i && sum_divisors($sum_div_i) == $i) {
            $amicable_numbers[] = array($i, $sum_div_i);
        }
    }
    return $amicable_numbers;
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $m = $_POST["m"];
    $amicable_numbers = find_amicable_numbers($m);
    if (count($amicable_numbers) > 0) {
        echo "Las parejas de números amigos menores o iguales a $m son:<br>";
        foreach ($amicable_numbers as $pair) {
            echo $pair[0] . " y " . $pair[1] . "<br>";
        }
    } else {
        echo "No hay parejas de números amigos menores o iguales a $m.";
    }
}
?>

<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
  m: <input type="text" name="m"><br>
  <input type="submit" value="Enviar">
</form>
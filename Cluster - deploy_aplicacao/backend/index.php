<?
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: *");

include 'conexao.php';

$id =  rand(1, 999);
$username = $_POST["username"];
$password = $_POST["password"];

$query = "INSERT INTO login(id, username, password) VALUES ('$id', '$username', '$password')";


if ($link->query($query) === TRUE) {
  echo "New record created successfully";
} else {
  echo "Error: " . $link->error;
}
?>
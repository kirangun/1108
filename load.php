<!DOCTYPE html>
<html>
<head>
<style>
table, th, td {
    border: 1px solid black;
}
</style>
</head>
<body>
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "test";
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT vid_id, vid_name, vid_is_active ,vid_status FROM videos1";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<table><tr><th>videoId</th><th>VideoName</th><th>video is active</th><th>video Status</th></tr>";
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<tr><td>".$row["vid_id"]."</td><td>".$row["vid_name"]."</td><td>".$row["vid_is_active"]."</td><td>".$row["vid_status"]."</td></tr>";
    }
    echo "</table>";
} else {
    echo "0 results";
}
$conn->close();
?>
<input type="submit" value="Play" action="<?php echo"hello";?>">
<input type="submit" value="Play">

</body>
</html>
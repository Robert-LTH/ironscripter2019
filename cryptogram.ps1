$crypto = @"
P k T r 2 s z 2 * c F -
r a z 7 G u D 4 w 6 U #
g c t K 3 E @ B t 1 a Y
Q P i c % 7 0 5 Z v A e
W 6 j e P R f p m I ) H
y ^ L o o w C n b J d O
S i 9 M b e r # ) i e U
* f 2 Z 6 M S h 7 V u D
5 a ( h s v 8 e l 1 o W
Z O 7 l p K y J l D z $
- j I @ t T 2 3 R a i k
q = F & w B 6 c % H l y
"@ -replace ' ' -replace '\r\n'

$X=1
$Y=12

$pos = [int]$X-1
$result = [System.Collections.ArrayList]::new()
while (($pos) -le $crypto.Length) {
    $result.Add(($crypto.Substring(($pos),1))) | Out-Null
    if (($pos+$y) -le $crypto.Length) {
        $result.Add($crypto.Substring(($pos+$y),1)) | Out-Null
    }
    $pos = $pos+$Y+$X
}
$result -join ''

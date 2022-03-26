# exemplary run:
# powershell .\check_file_digest.ps1 -fileToCheck "KeePassXC-2.7.0-Win64.msi" -fileContainingDigest "KeePassXC-2.7.0-Win64.msi.DIGEST" -algorithm SHA256

param (    
    [Parameter(Mandatory=$true)][string]$fileToCheck,
	[Parameter(Mandatory=$true)][string]$fileContainingDigest,
	[Parameter(Mandatory=$true)][string]$algorithm
     )
 

echo "Now starting..."

$checksum=($(CertUtil -hashfile $fileToCheck $algorithm)[1] -replace " ", "").ToUpper()
$digest=((cat $fileContainingDigest) -split '\s+')[0].ToUpper()

echo "Digest of file '$fileToCheck' with algorithm '$algorithm' is: $checksum"
echo "Digest in file '$fileContainingDigest' containing digest is: $digest"
echo "Are both digest strings equal?: $($checksum -eq $digest)"


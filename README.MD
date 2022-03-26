# check-file-digest

powershell script to check if the file digest (checksum) of a file is the same as a digest in a given digest file.

## how to run it (example)

```
powershell .\check_file_digest.ps1 -fileToCheck "KeePassXC-2.7.0-Win64.msi" -fileContainingDigest "KeePassXC-2.7.0-Win64.msi.DIGEST" -algorithm SHA256
```

where "fileToCheck" is the file you want to calculate the digest with the given "algorithm", and "fileContainingDigest" is the file which contains the digest in the form of "digest|one or multiple spaces|filename", e.g. "9474B9AFBA75043886D0E02E62AE17B9433B9AD0777023A2D753B00C418A9B86 *KeePassXC-2.7.0-Win64.msi"
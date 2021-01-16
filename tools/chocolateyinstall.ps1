$ErrorActionPreference = 'Stop'; 
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = 'diskled'
  unzipLocation = $toolsDir
  url           = 'https://helgeklein.com/downloads/DiskLED/current/DiskLED.zip'
  softwareName  = 'diskled*' 
  checksum      = '880C891CF080ECE6FC39E80A492F4231D8715A8F786A54C8E5F9BB59D88C6454'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
$object = @{
    "a" = "value1"
    "b" = @{
        "c" = "value2"
        "d" = @{
            "e" = "value3"
        }
    }
}

$value = Get-NestedObjectValue -Object $object -Key "e"
Write-Output $value

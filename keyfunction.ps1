function Get-NestedObjectValue {
    param (
        [Parameter(Mandatory=$true)]
        [System.Collections.IDictionary]$Object,

        [Parameter(Mandatory=$true)]
        [string]$Key
    )

    foreach ($k in $Object.Keys) {
        if ($k -eq $Key) {
            return $Object[$k]
        }

        $value = $Object[$k]

        if ($value -is [System.Collections.IDictionary]) {
            $result = Get-NestedObjectValue -Object $value -Key $Key
            if ($result -ne $null) {
                return $result
            }
        }
    }

    return $null
}

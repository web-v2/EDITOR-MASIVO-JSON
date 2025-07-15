# carpeta raíz donde están los subdirectorios
$raiz = "D:\directorio\contenedor\facturas-con-json"
# número inicial para numNota
$contador = 1

# obtener todos los subdirectorios
$carpetas = Get-ChildItem -Path $raiz -Directory

foreach ($carpeta in $carpetas) {
    $nombreArchivo = "$($carpeta.Name).json"
    $rutaArchivo = Join-Path $carpeta.FullName $nombreArchivo

    if (Test-Path $rutaArchivo) {
        # leer y modificar el JSON
        $json = Get-Content $rutaArchivo | ConvertFrom-Json
        $json.tipoNota = "NA"
        $json.numNota = "NA{0:D4}" -f $contador
        $contador++

        # sobrescribir el archivo con los cambios
        $json | ConvertTo-Json -Depth 10 | Set-Content $rutaArchivo
        Write-Host "✅ Modificado: $rutaArchivo"
    } else {
        Write-Host "⚠️ Archivo no encontrado: $rutaArchivo"
    }
}
$ultimoValor = "NA{0:D4}" -f ($contador-1)
Write-Host "📌 Último valor asignado: $ultimoValor"
Write-Host "🏁 Todos los archivos procesados."
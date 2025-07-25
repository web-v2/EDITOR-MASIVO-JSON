# 📝 Script PowerShell para Actualización de Archivos JSON

Este script automatiza la modificación de archivos `.json` ubicados en subdirectorios de una carpeta raíz. En particular, se utiliza para actualizar los campos `tipoNota` y `numNota` con valores específicos y secuenciales, útil en procesos de glosas u otras operaciones que requieren numeración estructurada.

---

## 📂 Estructura Esperada del Directorio

El script asume la siguiente estructura:

📁 CarpetaRaiz<br>
├── 📁 SubCarpeta1<br>
│ └── SubCarpeta1.json<br>
├── 📁 SubCarpeta2<br>
│ └── SubCarpeta2.json<br>
└── ...

Cada subcarpeta debe contener un archivo `.json` con el mismo nombre que la carpeta.

---

## ⚙️ ¿Qué Hace el Script?

- Recorre cada subdirectorio dentro de la ruta raíz.
- Verifica si existe un archivo `.json` cuyo nombre coincida con el de la carpeta.
- Si el archivo existe:
  - Modifica los campos:
    - `"tipoNota"` → `"NA"`
    - `"numNota"` → un valor como `"NA0349"`, `"NA0350"`, etc.
  - Guarda los cambios sobrescribiendo el archivo.
- Si el archivo no existe, muestra una advertencia.
- Al final, muestra el último valor asignado.

---

## 🚀 Cómo Ejecutarlo

1. Abre **PowerShell** como administrador (opcional, pero recomendado).
2. Edita la variable `$raiz` en el script para que apunte a la carpeta raíz que contiene tus subdirectorios.
3. (Opcional) Cambia el valor inicial del contador en `$contador` según el número deseado.
4. Ejecuta el script:

```powershell
.\actualizar-json.ps1
```

✅ ¿Cómo ejecuto mi script .ps1?

1. Abre PowerShell.
2. Ve al directorio donde está el script:

```powershell
cd "C:\Ruta\A\Tu\Script"
```

Ejecuta:

```powershell
.\actualizar-json.ps1
```

## 🛠️ Requisitos

PowerShell 5.1 o superior (incluido en Windows 10+)
Permisos de escritura en los archivos .json

## ✅ Recomendaciones

Haz un respaldo de los archivos antes de ejecutar el script.
Valida que los archivos .json tengan el mismo nombre que sus carpetas.
Si necesitas hacer pruebas, duplica una carpeta y observa el resultado antes de ejecutar el script en producción.
Puedes versionar los cambios con Git para mayor seguridad.

## 🧪 Ejemplo de Salida

- ✅ Modificado: D:\...Ruta...\LOTE1\SubCarpeta1\SubCarpeta1.json
- ✅ Modificado: D:\...Ruta...\LOTE1\SubCarpeta2\SubCarpeta2.json
- 📌 Último valor asignado: NA0002
- 🏁 Todos los archivos procesados.

## 📄 Licencia

MIT License

Este proyecto es de uso libre. Puedes modificar, distribuir y reutilizar el código. Si lo usas o mejoras, ¡una mención siempre es bienvenida!

## 👤 Autor ✒️

- **Samir Vergara**
  Desarrollador de software
  GitHub [https://github.com/web-v2]
